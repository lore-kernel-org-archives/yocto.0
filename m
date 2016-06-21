Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0831E009F4; Tue, 21 Jun 2016 16:08:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9C9FE009CF
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2016 16:08:10 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 21 Jun 2016 16:08:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,507,1459839600"; d="scan'208";a="1002631829"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.159])
	by orsmga002.jf.intel.com with ESMTP; 21 Jun 2016 16:08:10 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 21 Jun 2016 18:07:42 -0500
Message-Id: <1466550472-1365-6-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1466550472-1365-1-git-send-email-anibal.limon@linux.intel.com>
References: <1466550472-1365-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: joshua.g.lock@intel.com
Subject: [[yocto-autobuilder][PATCHv2] 05/15] buildbot: Add support for DirectoryDownload transfer step
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
X-List-Received-Date: Tue, 21 Jun 2016 23:08:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The new DirectoryDownload transfer step provides support for
download a directory from master to slave in specific location.

The current implementation extends FileDownload step but it creates
a tar file (may be compressed) and download it from master to slave,
finally slave decompress the tarfile into specific directory.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 .../buildbot/steps/transfer.py                     | 86 +++++++++++++++++++++-
 .../buildslave/commands/registry.py                |  1 +
 .../buildslave/commands/transfer.py                | 79 ++++++++++++++++++++
 3 files changed, 164 insertions(+), 2 deletions(-)

diff --git a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/transfer.py b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/transfer.py
index 09b3750..fb49597 100644
--- a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/transfer.py
+++ b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/transfer.py
@@ -170,7 +170,6 @@ class _DirectoryWriter(_FileWriter):
         archive.close()
         os.remove(self.tarname)
 
-
 def makeStatusRemoteCommand(step, remote_command, args):
     self = buildstep.RemoteCommand(remote_command, args,  decodeRC={None:SUCCESS, 0:SUCCESS})
     callback = lambda arg: step.step_status.addLog('stdio')
@@ -365,7 +364,6 @@ class DirectoryUpload(_TransferBuildStep):
             return BuildStep.finished(self, FAILURE)
         return BuildStep.finished(self, SUCCESS)
 
-
 class _FileReader(pb.Referenceable):
     """
     Helper class that acts as a file-object with read access
@@ -463,6 +461,90 @@ class FileDownload(_TransferBuildStep):
         d = self.runCommand(self.cmd)
         d.addCallback(self.finished).addErrback(self.failed)
 
+class DirectoryDownload(_TransferBuildStep):
+
+    name = 'download'
+
+    renderables = [ 'mastersrc', 'slavedest' ]
+
+    def __init__(self, mastersrc, slavedest,
+                 workdir=None, maxsize=None, blocksize=16*1024,
+                 compress=None, mode=None, **buildstep_kwargs):
+        BuildStep.__init__(self, **buildstep_kwargs)
+
+        self.mastersrc = mastersrc
+        self.slavedest = slavedest
+        self.workdir = workdir
+        self.maxsize = maxsize
+        self.blocksize = blocksize
+        if compress not in (None, 'gz', 'bz2'):
+            config.error(
+                "'compress' must be one of None, 'gz', or 'bz2'")
+        self.compress = compress
+        self.mode = mode
+
+    def start(self):
+        version = self.slaveVersion("downloadDirectory")
+
+        if not version:
+            m = "slave is too old, does not know about uploadDirectory"
+            raise BuildSlaveTooOldError(m)
+
+        # we rely upon the fact that the buildmaster runs chdir'ed into its
+        # basedir to make sure that relative paths in mastersrc are expanded
+        # properly. TODO: maybe pass the master's basedir all the way down
+        # into the BuildStep so we can do this better.
+        source = os.path.expanduser(self.mastersrc)
+
+        slavedest = self.slavedest
+
+        log.msg("DirectoryDownload started, from master %r to slave %r"
+                % (source, slavedest))
+
+        self.step_status.setText(['downloading', "to", slavedest])
+
+        # setup structures for reading the file
+        try:
+            fd, self.tarname = tempfile.mkstemp()
+            fileobj = os.fdopen(fd, 'w')
+            if self.compress == 'bz2':
+                mode='w|bz2'
+            elif self.compress == 'gz':
+                mode='w|gz'
+            else:
+                mode = 'w'
+            archive = tarfile.open(name=self.tarname, mode=mode, fileobj=fileobj)
+            archive.add(source, '')
+            archive.close()
+            fileobj.close()
+
+            fp = open(self.tarname, 'rb')
+        except IOError:
+            # if file does not exist, bail out with an error
+            self.addCompleteLog('stderr',
+                                'Directory %r not available at master' % source)
+            # TODO: once BuildStep.start() gets rewritten to use
+            # maybeDeferred, just re-raise the exception here.
+            eventually(BuildStep.finished, self, FAILURE)
+            return
+
+        fileReader = _FileReader(fp)
+
+        # default arguments
+        args = {
+            'slavedest': slavedest,
+            'maxsize': self.maxsize,
+            'reader': fileReader,
+            'blocksize': self.blocksize,
+            'workdir': self._getWorkdir(),
+            'mode': self.mode,
+            'compress': self.compress,
+            }
+
+        self.cmd = makeStatusRemoteCommand(self, 'downloadDirectory', args)
+        d = self.runCommand(self.cmd)
+        d.addCallback(self.finished).addErrback(self.failed)
+
 class StringDownload(_TransferBuildStep):
 
     name = 'string_download'
diff --git a/lib/python2.7/site-packages/buildbot_slave-0.8.8-py2.7.egg/buildslave/commands/registry.py b/lib/python2.7/site-packages/buildbot_slave-0.8.8-py2.7.egg/buildslave/commands/registry.py
index 080e814..22dc3ee 100644
--- a/lib/python2.7/site-packages/buildbot_slave-0.8.8-py2.7.egg/buildslave/commands/registry.py
+++ b/lib/python2.7/site-packages/buildbot_slave-0.8.8-py2.7.egg/buildslave/commands/registry.py
@@ -21,6 +21,7 @@ commandRegistry = {
     "uploadFile" : "buildslave.commands.transfer.SlaveFileUploadCommand",
     "uploadDirectory" : "buildslave.commands.transfer.SlaveDirectoryUploadCommand",
     "downloadFile" : "buildslave.commands.transfer.SlaveFileDownloadCommand",
+    "downloadDirectory" : "buildslave.commands.transfer.SlaveDirectoryDownloadCommand",
     "svn" : "buildslave.commands.svn.SVN",
     "bk" : "buildslave.commands.bk.BK",
     "cvs" : "buildslave.commands.cvs.CVS",
diff --git a/lib/python2.7/site-packages/buildbot_slave-0.8.8-py2.7.egg/buildslave/commands/transfer.py b/lib/python2.7/site-packages/buildbot_slave-0.8.8-py2.7.egg/buildslave/commands/transfer.py
index 670c54e..e51e8b9 100644
--- a/lib/python2.7/site-packages/buildbot_slave-0.8.8-py2.7.egg/buildslave/commands/transfer.py
+++ b/lib/python2.7/site-packages/buildbot_slave-0.8.8-py2.7.egg/buildslave/commands/transfer.py
@@ -354,3 +354,82 @@ class SlaveFileDownloadCommand(TransferCommand):
             self.fp.close()
 
         return TransferCommand.finished(self, res)
+
+class SlaveDirectoryDownloadCommand(SlaveFileDownloadCommand):
+    debug = False
+
+    def setup(self, args):
+        self.workdir = args['workdir']
+
+        self.dirname = os.path.expanduser(args['slavedest'])
+        self.reader = args['reader']
+        self.bytes_remaining = args['maxsize']
+        self.blocksize = args['blocksize']
+        self.compress = args['compress']
+        self.mode = args['mode']
+        self.stderr = None
+        self.rc = 0
+
+    def start(self):
+        if self.debug:
+            log.msg('SlaveDirectoryDownloadCommand starting')
+
+        if not os.path.exists(self.dirname):
+            os.makedirs(self.dirname)
+
+        try:
+            fd, self.tarname = tempfile.mkstemp()
+            self.fp = os.fdopen(fd, 'w')
+            if self.debug:
+                log.msg("Opened '%s' for download" % self.tarname)
+        except IOError:
+            # TODO: this still needs cleanup
+            self.fp = None
+            self.stderr = "Cannot open file '%s' for download" % self.tarname
+            self.rc = 1
+            if self.debug:
+                log.msg("Cannot open file '%s' for download" % self.tarname)
+
+        d = defer.Deferred()
+        self._reactor.callLater(0, self._loop, d)
+        def _close(res):
+            # close the file, but pass through any errors from _loop
+            d1 = self.reader.callRemote('close')
+            d1.addErrback(log.err, 'while trying to close reader')
+            d1.addCallback(lambda ignored: res)
+            return d1
+        d.addBoth(_close)
+        d.addBoth(self.finished)
+        return d
+
+    def finished(self, res):
+        if self.fp is not None:
+            self.fp.close()
+
+        # decompress
+        if self.compress == 'bz2':
+            mode='r|bz2'
+        elif self.compress == 'gz':
+            mode='r|gz'
+        else:
+            mode = 'r'
+        if not hasattr(tarfile.TarFile, 'extractall'):
+            tarfile.TarFile.extractall = _extractall
+        archive = tarfile.open(name=self.tarname, mode=mode)
+        archive.extractall(path=self.dirname)
+        archive.close()
+        os.remove(self.tarname)
+
+        # note: there is a brief window during which the new file
+        # will have the buildslave's default (umask) mode before we
+        # set the new one. Don't use this mode= feature to keep files
+        # private: use the buildslave's umask for that instead. (it
+        # is possible to call os.umask() before and after the open()
+        # call, but cleaning up from exceptions properly is more of a
+        # nuisance that way).
+        if self.mode is not None:
+            for f in os.listdir(self.dirname):
+                full_f = os.path.join(self.dirname, f)
+                os.chmod(full_f, self.mode)
+
+        return TransferCommand.finished(self, res)
-- 
2.1.4


