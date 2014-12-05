Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A556E008F6; Fri,  5 Dec 2014 07:28:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [107.14.166.228 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cdptpa-oedge-vip.email.rr.com
	(cdptpa-outbound-snat.email.rr.com [107.14.166.228])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A86CE008CF
	for <yocto@yoctoproject.org>; Fri,  5 Dec 2014 07:28:26 -0800 (PST)
Received: from [98.100.91.242] ([98.100.91.242:34167]
	helo=ih3-development-ubuntu-vm.melinkcorp.local)
	by cdptpa-oedge01 (envelope-from <bevenson@melinkcorp.com>)
	(ecelerity 3.5.0.35861 r(Momo-dev:tip)) with ESMTP
	id EF/FA-29844-6CEC1845; Fri, 05 Dec 2014 15:27:02 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: yocto@yoctoproject.org, california.l.sullivan@intel.com,
	elizabeth.flanagan@intel.com, bevenson@melinkcorp.com
Date: Fri,  5 Dec 2014 10:26:53 -0500
Message-Id: <1417793213-26974-3-git-send-email-bevenson@melinkcorp.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1417793213-26974-1-git-send-email-bevenson@melinkcorp.com>
References: <1417793213-26974-1-git-send-email-bevenson@melinkcorp.com>
X-RR-Connecting-IP: 107.14.168.118:25
X-Cloudmark-Score: 0
Subject: [autobuilder][PATCH 2/2] Documentation: Document GitPoller changesource
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
X-List-Received-Date: Fri, 05 Dec 2014 15:28:28 -0000

Adds documentation to README-NEW-AUTOBUILDER and the HTML
documentation on how to use the GitPoller changesource.

Signed-off-by: Bryan Evenson <bevenson@melinkcorp.com>
---
 README-NEW-AUTOBUILDER                       |   35 +++++++++++++++++++++-----
 docs/YoctoAutobuilderDevelopersDocument.html |   26 +++++++++++++++++--
 2 files changed, 53 insertions(+), 8 deletions(-)

diff --git a/README-NEW-AUTOBUILDER b/README-NEW-AUTOBUILDER
index a6476f2..97bbe61 100644
--- a/README-NEW-AUTOBUILDER
+++ b/README-NEW-AUTOBUILDER
@@ -182,7 +182,8 @@ scheduler: A list of dicts. Each item defines a scheduler associated with this
                     definition.
 
                stable-timer: how long (in seconds) to wait after change before
-                    triggering build to allow for changes to settle.
+                    triggering build to allow for changes to settle.  Defaults
+                    to 60 seconds.
 
 	       change-user: the user name which the remote hook will use; the
                     default value is the repository name as per the 'repository'
@@ -194,6 +195,17 @@ scheduler: A list of dicts. Each item defines a scheduler associated with this
                     secret to avoid injection of arbitrary changes into your
                     autobuilder.
 
+               changesource: the type of changesource to use for the scheduler;
+                    the default setting is a PBChangeSource.  Only other valid
+                    option is 'GitPoller' for a GitPoller changesource.  See the
+                    official Buildbot documentation at
+                    http://docs.buildbot.net/latest/manual/cfg-changesources.html
+                    for more information on changesources.
+               
+               interval: The interval between polling for changes.  Only valid
+                    for GitPoller changesources.  Defaults to 300 seconds (five
+                    minutes).
+
            Extra Notes on SingleBranchScheduler setup
            ------------------------------------------
 
@@ -204,10 +216,10 @@ scheduler: A list of dicts. Each item defines a scheduler associated with this
            do nightly rebuilds for some repos and immediate for others.
 
            The scheduler change filter is set up to watch changes only in the
-           single repository specified, so you have to set up your repository
-           hook to sent the repository url in the change set with the
-           --repository argument to git_buildbot.py, e.g., your git post-receive
-           hook could look something like:
+           single repository specified.  If you are using a PBChangeSource, you
+           have to set up your repository hook to send the repository url in the
+           change set with the --repository argument to git_buildbot.py, e.g.,
+           your git post-receive hook could look something like:
 
              #!/bin/sh
              echo "$1 $2 $3" | \
@@ -224,7 +236,18 @@ scheduler: A list of dicts. Each item defines a scheduler associated with this
                   git_buildbot.py --repository="file:///where_your_repo_is"
 
            Because of the way builbot change sources work, your change user
-           names must not colide with the user names used by your slaves.
+           names must not collide with the user names used by your slaves.
+
+           If you are using a GitPoller changesource and you specify a valid
+           repository but an non-existent branch, Buildbot will silently ignore
+           your scheduler. If a repository has changed recently but your build
+           has not triggered, validate that your repository and branch settings
+           are valid.
+
+           For either a PBChangeSource or a GitPoller changesource, the
+           scheduler will not see the initial repository discovery as a change.
+           If you are using a SingleBranchScheduler schedule, it is good
+           practice to force a build to verify the buildset works correctly.
 
 Example:
 
diff --git a/docs/YoctoAutobuilderDevelopersDocument.html b/docs/YoctoAutobuilderDevelopersDocument.html
index e3eb406..d8c5ccb 100644
--- a/docs/YoctoAutobuilderDevelopersDocument.html
+++ b/docs/YoctoAutobuilderDevelopersDocument.html
@@ -1218,7 +1218,7 @@
                         <p class="c0"><span class="c9">the user name which the remote hook will use; the &nbsp;default value is the repository name as per the &#39;repository&#39; property.</span></p>
                     </td>
                 </tr>
-                <tr class="c3">
+                 <tr class="c3">
                     <td class="c15" colspan="1" rowspan="1">
                         <p class="c0"><span class="c9">change-password</span></p>
                     </td>
@@ -1229,15 +1229,37 @@
                         <p class="c0"><span class="c9">password which the remote hook will use; the default is the buildbot default &#39;changepw&#39; -- if your autobuilder is publically accessible, you want to keep this secret to avoid injection of arbitrary changes into your autobuilder.<br></span></p>
                     </td>
                 </tr>
+                <tr class="c3">
+                    <td class="c15" colspan="1" rowspan="1">
+                        <p class="c0"><span class="c9">changesource</span></p>
+                    </td>
+                    <td class="c28" colspan="1" rowspan="1">
+                        <p class="c0"><span class="c9">Optional</span></p>
+                    </td>
+                    <td class="c45" colspan="1" rowspan="1">
+                        <p class="c0"><span class="c9">the type of changesource to use for the scheduler; the default setting is a PBChangeSource. Only other valid option is 'GitPoller' for a GitPoller changesource. See the <span class="c20"><a class="c29" href="http://docs.buildbot.net/latest/manual/cfg-changesources.html">Buildbot Changesource documentation</a></span><span>&nbsp;for more information on changesources.<br></span></p>
+                    </td>
+                <tr class="c3">
+                    <td class="c15" colspan="1" rowspan="1">
+                        <p class="c0"><span class="c9">interval</span></p>
+                    </td>
+                    <td class="c28" colspan="1" rowspan="1">
+                        <p class="c0"><span class="c9">Optional</span></p>
+                    </td>
+                    <td class="c45" colspan="1" rowspan="1">
+                        <p class="c0"><span class="c9">The interval between polling for changes. Only valid for GitPoller changesources. Defaults to 300 seconds (five minutes).<br></span></p>
+                    </td>
+                 </tr>
             </tbody>
         </table>
         <h5 class="c4 c14"><a name="h.9xpudqajj26x"></a><span><br></span><span class="c43">Extra Notes on SingleBranchScheduler setup</span><span><br></span></h5>
         <p class="c4"><span>There is one SBS scheduler for each repository in the buildset, i.e., if your buildset contains more repositories, and you want build triggered by changes to any of them, you need to define a scheduler for each. This also means that you can mix and match, e.g., only do nightly rebuilds for some repos and immediate for others.<br></span></p>
-        <p class="c4"><span>The scheduler change filter is set up to watch changes only in the single repository specified, so you have to set up your repository hook to sent the repository url in the change set with the --repository argument to git_buildbot.py, e.g., your git post-receive &nbsp;hook could look something like:<br></span></p>
+        <p class="c4"><span>The scheduler change filter is set up to watch changes only in the single repository specified. If you are using a PBChangeSource, you have to set up your repository hook to send the repository url in the change set with the --repository argument to git_buildbot.py, e.g., your git post-receive hook could look something like:<br></span></p>
         <h6 class="c4 c14"><a name="h.xrluuas8ukd9"></a><span><br> &nbsp; &nbsp;#!/bin/sh<br> &nbsp; &nbsp;echo &quot;$1 $2 $3&quot; | git_buildbot.py --repository=&quot;git://some_repo...&quot;<br></span></h6>
         <p class="c4"><span><br>For local testing, you can use a post-merge hook instead, along these lines:</span></p>
         <h6 class="c4 c14"><a name="h.64rcw99ffkjq"></a><span><br> &nbsp; &nbsp;#!/bin/sh<br> &nbsp; &nbsp;PRE=$(git rev-parse &#39;HEAD@{1}&#39;)<br> &nbsp; &nbsp;POST=$(git rev-parse HEAD)<br> &nbsp; &nbsp;SYMNAME=$(git rev-parse --symbolic-full-name HEAD)<br> &nbsp; &nbsp;echo &quot;$PRE $POST $SYMNAME&quot; | \<br> &nbsp; &nbsp;git_buildbot.py --repository=&quot;file:///where_your_repo_is&quot;</span></h6>
         <p class="c4"><span><br>Because of the way buildbot change sources work, your change user names must not collide with the user names used by your slaves.</span></p>
+        <p class="c4"><span><br>If you are using a GitPoller changesource and you specify a valid repository but an non-existent branch, Buildbot will silently ignore your scheduler. If a repository has changed recently but your build has not triggered, validate that your repository and branch settings are valid.</span></p><p class="c4"><span><br>For either a PBChangeSource or a GitPoller changesource, the scheduler will not see the initial repository discovery as a change. If you are using a SingleBranchScheduler schedule, it is good practice to force a build after initial setup to verify the buildset works correctly.</span></p>
         <p class="c4 c6"><span></span></p>
         <h3 class="c4 c14"><a name="h.fs6mwzkke7xv"></a><span>How do I create my own buildset?</span></h3>
         <ol class="c7 lst-kix_rxf8talb6b1y-0 start" start="1">
-- 
1.7.9.5


