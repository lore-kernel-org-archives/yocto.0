Return-Path: <Daniel.Bornaz@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98D08E00781; Thu, 17 Jul 2014 03:28:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id D4D9EE006B9
	for <yocto@yoctoproject.org>; Thu, 17 Jul 2014 03:28:12 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.158.1;
	Thu, 17 Jul 2014 12:28:04 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4483)	id 279C9288F32;
	Thu, 17 Jul 2014 12:28:04 +0200 (CEST)
From: Daniel BORNAZ <daniel.bornaz@enea.com>
To: <yocto@yoctoproject.org>, <openembedded-core@lists.openembedded.org>
Date: Thu, 17 Jul 2014 12:27:57 +0200
Message-ID: <1405592877-16855-1-git-send-email-daniel.bornaz@enea.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Received-SPF: None (SESTOEX08.enea.se: daniel.bornaz@enea.com does not
	designate permitted sender hosts)
Cc: Benjamin Peterson <benjamin@python.org>
Subject: [PATCH] _json module arbitrary process memory read vulnerability
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
X-List-Received-Date: Thu, 17 Jul 2014 10:28:18 -0000
Content-Type: text/plain

python-native: _json module arbitrary process memory read vulnerability

http://bugs.python.org/issue21529

Python 2 and 3 are susceptible to arbitrary process memory reading by
a user or adversary due to a bug in the _json module caused by
insufficient bounds checking.

The sole prerequisites of this attack are that the attacker is able to
control or influence the two parameters of the default scanstring
function: the string to be decoded and the index.

The bug is caused by allowing the user to supply a negative index
value. The index value is then used directly as an index to an array
in the C code; internally the address of the array and its index are
added to each other in order to yield the address of the value that is
desired. However, by supplying a negative index value and adding this
to the address of the array, the processor's register value wraps
around and the calculated value will point to a position in memory
which isn't within the bounds of the supplied string, causing the
function to access other parts of the process memory.

Signed-off-by: Benjamin Peterson <benjamin@python.org>


Applied to python-native recipe in order to fix the above mentioned vulnerability.

Upstream-Status: Submitted

Signed-off-by: Daniel BORNAZ <daniel.bornaz@enea.com>

---
 meta/recipes-devtools/python/python-native_2.7.3.bb  |  1 +
 .../python/python/python-json-flaw-fix.patch         | 20 ++++++++++++++++++++
 2 files changed, 21 insertions(+)
 create mode 100644 meta/recipes-devtools/python/python/python-json-flaw-fix.patch

diff --git a/meta/recipes-devtools/python/python-native_2.7.3.bb b/meta/recipes-devtools/python/python-native_2.7.3.bb
index 0571d3a..74f0dfc 100644
--- a/meta/recipes-devtools/python/python-native_2.7.3.bb
+++ b/meta/recipes-devtools/python/python-native_2.7.3.bb
@@ -19,6 +19,7 @@ SRC_URI += "\
            file://parallel-makeinst-create-bindir.patch \
            file://python-fix-build-error-with-Readline-6.3.patch \
            file://gcc-4.8-fix-configure-Wformat.patch \
+           file://python-json-flaw-fix.patch \
            "
 S = "${WORKDIR}/Python-${PV}"
 
diff --git a/meta/recipes-devtools/python/python/python-json-flaw-fix.patch b/meta/recipes-devtools/python/python/python-json-flaw-fix.patch
new file mode 100644
index 0000000..631713d
--- /dev/null
+++ b/meta/recipes-devtools/python/python/python-json-flaw-fix.patch
@@ -0,0 +1,20 @@
+--- a/Modules/_json.c	2014-07-15 15:37:17.151046356 +0200
++++ b/Modules/_json.c	2014-07-15 15:38:37.335605042 +0200
+@@ -1491,7 +1491,7 @@ scan_once_str(PyScannerObject *s, PyObje
+     PyObject *res;
+     char *str = PyString_AS_STRING(pystr);
+     Py_ssize_t length = PyString_GET_SIZE(pystr);
+-    if (idx >= length) {
++    if ( idx < 0 || idx >= length) {
+         PyErr_SetNone(PyExc_StopIteration);
+         return NULL;
+     }
+@@ -1578,7 +1578,7 @@ scan_once_unicode(PyScannerObject *s, Py
+     PyObject *res;
+     Py_UNICODE *str = PyUnicode_AS_UNICODE(pystr);
+     Py_ssize_t length = PyUnicode_GET_SIZE(pystr);
+-    if (idx >= length) {
++    if ( idx < 0 || idx >= length) {
+         PyErr_SetNone(PyExc_StopIteration);
+         return NULL;
+     }
-- 
1.9.1


