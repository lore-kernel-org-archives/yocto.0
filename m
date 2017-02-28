Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC4BCE00A0A; Tue, 28 Feb 2017 15:07:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [134.134.136.24 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DFBFE00998
	for <yocto@yoctoproject.org>; Tue, 28 Feb 2017 15:07:49 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	28 Feb 2017 15:07:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,222,1484035200"; d="scan'208";a="1116798722"
Received: from jalamego-mobl2.zpn.intel.com ([10.219.128.117])
	by fmsmga001.fm.intel.com with ESMTP; 28 Feb 2017 15:07:48 -0800
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 28 Feb 2017 17:07:33 -0600
Message-Id: <1488323254-21800-3-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488323254-21800-1-git-send-email-jose.a.lamego@linux.intel.com>
References: <1488323254-21800-1-git-send-email-jose.a.lamego@linux.intel.com>
Subject: [patchwork][PATCH 2/3] jquery.tablecheckbox: add plugin for multiselect functionality
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 28 Feb 2017 23:07:50 -0000

Selecting multiple items in a patch list must be done manually,
one item at a time, resulting in a poor user experience.

This change adds the jquery.tablecheckbox.js plugin that allows
 to select single / multiple / all table row(s) by clicking.

[YOCTO #10819]

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---
 htdocs/js/jquery.tablecheckbox.js | 165 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 165 insertions(+)
 create mode 100644 htdocs/js/jquery.tablecheckbox.js

diff --git a/htdocs/js/jquery.tablecheckbox.js b/htdocs/js/jquery.tablecheckbox.js
new file mode 100644
index 0000000..8a50541
--- /dev/null
+++ b/htdocs/js/jquery.tablecheckbox.js
@@ -0,0 +1,165 @@
+(function($) {
+    /**
+     * A jQuery plugin that lets you easily enhance data tables with selectable rows.
+     *
+     *
+     * @author Marco Kerwitz <marco@kerwitz.com>
+     * @see    https://github.com/kerwitz/jquery.tablecheckbox
+     */
+    $.fn.tablecheckbox = function(options) {
+        var _private = {
+            /**
+             * The configuration of this plugin.
+             *
+             * Overload with custom values when calling the plugin:
+             * $('table').tableCheckbox({selectedRowClass: 'selected-row'});
+             *
+             * @var object
+             */
+            config: $.extend({
+                // The class that will be applied to selected rows.
+                selectedRowClass: 'warning',
+                // The selector used to find the checkboxes on the table. You may customize this in
+                // order to match your table layout if it differs from the assumed one.
+                checkboxSelector: 'td:first-of-type input[type="checkbox"],th:first-of-type input[type="checkbox"]',
+                // A callback that is used to determine wether a checkbox is selected or not.
+                isChecked: function($checkbox) {
+                    return $checkbox.is(':checked');
+                }
+            }, options),
+            /**
+             * Variables used across multiple tables.
+             *
+             * @var object
+             */
+            registry: {
+                shiftKeyIsPressed: false
+            },
+            helpers: {
+                /**
+                 * Returns the selection methods available in the current browser.
+                 *
+                 * @author Grinn, http://stackoverflow.com/users/152648/grinn
+                 * @author Gert Grenander, http://stackoverflow.com/users/339850/gert-grenander
+                 * @see    http://stackoverflow.com/questions/3169786/clear-text-selection-with-javascript
+                 */
+                selection: window.getSelection ? window.getSelection() : document.selection ? document.selection : null,
+                /**
+                 * Removes any text selection the user made.
+                 *
+                 * @author Marco Kerwitz <marco@kerwitz.com>
+                 */
+                removeTextSelection: function() {
+                    if (!!_private.helpers.selection) {
+                        _private.helpers.selection.empty
+                            ? _private.helpers.selection.empty()
+                            : _private.helpers.selection.removeAllRanges();
+                    }
+                },
+                /**
+                 * Returns wether or not a text selection currently exists.
+                 *
+                 * @author Marco Kerwitz <marco@kerwitz.com>
+                 * @todo   This will return false positives when the user selected text outside of
+                 *         the table and then tries to select rows.
+                 * @return {boolean}
+                 */
+                hasSelection: function() {
+                    return !!_private.helpers.selection && _private.helpers.selection.toString().length;
+                }
+            }
+        };
+        // Initiate a event callback that we can use to tell wether the user is pressing the shift
+        // key or not.
+        $(document).on('keydown.tsc keyup.tsc', function(e) {
+            _private.registry.shiftKeyIsPressed = e.shiftKey;
+        });
+        return this.each(function() {
+            var $table = $(this),
+                $headCheckbox = $table.find('thead tr ' + _private.config.checkboxSelector),
+                $checkboxes = $table.find('tr ' + _private.config.checkboxSelector).not($headCheckbox),
+                $lastRow = [];
+            // Listen for changes on the checkbox in the table header and apply its current state
+            // to all checkboxe on the table.
+            $headCheckbox.on('change', function(e) {
+                var $allRows = $table.find('tbody tr');
+                $checkboxes
+                    .prop('checked', _private.config.isChecked($headCheckbox))
+                    .trigger('change');
+                $table.trigger(
+                    _private.config.isChecked($headCheckbox) ? 'multirowselect' : 'multirowdeselect',
+                    {
+                        $rows: $allRows,
+                        $checkboxes: $allRows.find(_private.config.checkboxSelector),
+                        rowCount: $allRows.length
+                    }
+                );
+            });
+            // Cycle through each checkbox found on the table.
+            $checkboxes.each(function() {
+                var $checkbox = $(this),
+                    $row = $checkbox.parents('tr'),
+                    $inbetween,
+                    $allRows;
+                $checkbox.on('change', function(e, isInternal) {
+                    // When the user clicks directly on the rows he will unwillingly select
+                    // the text of all rows inbetween. Remove that selection immediately.
+                    _private.helpers.removeTextSelection();
+                    if (!isInternal && _private.registry.shiftKeyIsPressed && $lastRow.length) {
+                        // User held shift key while clicking on this checkbox and clicked another one
+                        // prior. Get all checkboxes inbetween the two and check or uncheck them.
+                        $inbetween = ($lastRow.index() < $row.index())
+                            ? $row.prevUntil($lastRow)
+                            : $row.nextUntil($lastRow);
+                        $inbetween.find(_private.config.checkboxSelector)
+                            .prop('checked', _private.config.isChecked($checkbox))
+                            .trigger('change', [true]);
+                        $allRows = $inbetween.add($row, $lastRow);
+                        // Trigger table level event.
+                        $table.trigger(
+                            _private.config.isChecked($checkbox) ? 'multirowselect' : 'multirowdeselect',
+                            {
+                                $rows: $allRows,
+                                $checkboxes: $allRows.find(_private.config.checkboxSelector),
+                                rowCount: $allRows.length
+                            }
+                        );
+                    }
+                    $lastRow = $row;
+                    $row.toggleClass(_private.config.selectedRowClass, _private.config.isChecked($checkbox));
+                    // Trigger row level event.
+                    $row.trigger(
+                        _private.config.isChecked($checkbox) ? 'rowselect' : 'rowdeselect',
+                        {$row: $row,$checkbox: $checkbox}
+                    );
+                });
+                // Monitor the row and check the checkbox accordingly.
+                $row.on('click', function(e) {
+                    if (_private.helpers.hasSelection()) {
+                        // There was a text slection prior to this click. Chances are that the user
+                        // simply wants to clear that instead of selecting this row - so do nothing.
+                        return;
+                    }
+                    if ($.data($row, 'tc-timeout')) {
+                        // There was a timeout running from a previous click event, this seems to be
+                        // a double click. Cancel the first timeout before we create a new one.
+                        window.clearTimeout($.data($row, 'tc-timeout'));
+                    }
+                    // We use a short timeout to wait for double-click selections that the user might
+                    // have intended to make. If any selection is created withing this timespan we
+                    // wont do anything to not interfere with the users intentions too much.
+                    $.data($row, 'tc-timeout', window.setTimeout(function() {
+                        // Do nothing if the user selected text on the row.
+                        if (_private.helpers.hasSelection()) return;
+                        // Make sure the user did not click on any clickable content in the row.
+                        if (!$(e.target).is('a,input,button') && !$(e.target).parents('a,input,button').length) {
+                            $checkbox
+                                .prop('checked', !_private.config.isChecked($checkbox))
+                                .trigger('change');
+                        }
+                    }, 50));
+                })
+            });
+        });
+    };
+}(jQuery));
-- 
1.9.1


