# This file was auto-generated by lib/tasks/web.rake

module Slack
  module Web
    module Api
      module Endpoints
        module Stars
          #
          # This method adds a star to an item (message, file, file comment, channel, private group, or DM) on behalf of the authenticated user.
          # One of file, file_comment, channel, or the combination of channel and timestamp must be specified.
          #
          # @option options [file] :file
          #   File to add star to.
          # @option options [Object] :file_comment
          #   File comment to add star to.
          # @option options [channel] :channel
          #   Channel to add star to, or channel where the message to add star to was posted (used with timestamp).
          # @option options [Object] :timestamp
          #   Timestamp of the message to add star to.
          # @see https://api.slack.com/methods/stars.add
          # @see https://github.com/dblock/slack-api-ref/blob/master/methods/stars/stars.add.json
          def stars_add(options = {})
            options = options.merge(channel: channels_id(options)['channel']['id']) if options[:channel]
            post('stars.add', options)
          end

          #
          # This method lists the items starred by a user.
          #
          # @option options [user] :user
          #   Show stars by this user. Defaults to the authed user.
          # @see https://api.slack.com/methods/stars.list
          # @see https://github.com/dblock/slack-api-ref/blob/master/methods/stars/stars.list.json
          def stars_list(options = {})
            options = options.merge(user: users_id(options)['user']['id']) if options[:user]
            post('stars.list', options)
          end

          #
          # This method removes a star from an item (message, file, file comment, channel, private group, or DM) on behalf of the authenticated user.
          # One of file, file_comment, channel, or the combination of channel and timestamp must be specified.
          #
          # @option options [file] :file
          #   File to remove star from.
          # @option options [Object] :file_comment
          #   File comment to remove star from.
          # @option options [channel] :channel
          #   Channel to remove star from, or channel where the message to remove star from was posted (used with timestamp).
          # @option options [Object] :timestamp
          #   Timestamp of the message to remove star from.
          # @see https://api.slack.com/methods/stars.remove
          # @see https://github.com/dblock/slack-api-ref/blob/master/methods/stars/stars.remove.json
          def stars_remove(options = {})
            options = options.merge(channel: channels_id(options)['channel']['id']) if options[:channel]
            post('stars.remove', options)
          end
        end
      end
    end
  end
end
