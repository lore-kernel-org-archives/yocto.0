Return-Path: <Adrian.Dudau@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD503E00C61; Mon,  7 Mar 2016 05:30:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 0A38DE00C51
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 05:30:01 -0800 (PST)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.266.1; Mon, 7 Mar 2016
	14:30:00 +0100
Received: by sestofb10.enea.se (Postfix, from userid 4451)	id 626B928BA23;
	Mon,  7 Mar 2016 14:30:00 +0100 (CET)
From: Adrian Dudau <adrian.dudau@enea.com>
To: <yocto@yoctoproject.org>
Date: Mon, 7 Mar 2016 14:30:00 +0100
Message-ID: <1457357400-3594-1-git-send-email-adrian.dudau@enea.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Received-SPF: None (SESTOEX08.enea.se: adrian.dudau@enea.com does not
	designate permitted sender hosts)
Subject: [meta-qt3][PATCH] classes: add qmake_base.bbclass
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
X-List-Received-Date: Mon, 07 Mar 2016 13:30:04 -0000
Content-Type: text/plain

The class was removed from oe classes, but some recipes like
qt-x11-free still inherit it. Keep the class within the layer to
acommmodate them.

Signed-off-by: Adrian Dudau <adrian.dudau@enea.com>
---
 classes/qmake_base.bbclass | 119 +++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 119 insertions(+)
 create mode 100644 classes/qmake_base.bbclass

diff --git a/classes/qmake_base.bbclass b/classes/qmake_base.bbclass
new file mode 100644
index 0000000..dc98713
--- /dev/null
+++ b/classes/qmake_base.bbclass
@@ -0,0 +1,119 @@
+QMAKE_MKSPEC_PATH ?= "${STAGING_DATADIR_NATIVE}/qmake"
+
+OE_QMAKE_PLATFORM = "${TARGET_OS}-oe-g++"
+QMAKESPEC := "${QMAKE_MKSPEC_PATH}/${OE_QMAKE_PLATFORM}"
+
+# We override this completely to eliminate the -e normally passed in
+EXTRA_OEMAKE = ""
+
+export OE_QMAKE_CC="${CC}"
+export OE_QMAKE_CFLAGS="${CFLAGS}"
+export OE_QMAKE_CXX="${CXX}"
+export OE_QMAKE_LDFLAGS="${LDFLAGS}"
+export OE_QMAKE_AR="${AR}"
+export OE_QMAKE_STRIP="echo"
+export OE_QMAKE_RPATH="-Wl,-rpath-link,"
+
+# default to qte2 via bb.conf, inherit qt3x11 to configure for qt3x11
+
+oe_qmake_mkspecs () {
+    mkdir -p mkspecs/${OE_QMAKE_PLATFORM}
+    for f in ${QMAKE_MKSPEC_PATH}/${OE_QMAKE_PLATFORM}/*; do
+        if [ -L $f ]; then
+            lnk=`readlink $f`
+            if [ -f mkspecs/${OE_QMAKE_PLATFORM}/$lnk ]; then
+                ln -s $lnk mkspecs/${OE_QMAKE_PLATFORM}/`basename $f`
+            else
+                cp $f mkspecs/${OE_QMAKE_PLATFORM}/
+            fi
+        else
+            cp $f mkspecs/${OE_QMAKE_PLATFORM}/
+        fi
+    done
+}
+
+do_generate_qt_config_file() {
+	export QT_CONF_PATH=${WORKDIR}/qt.conf
+	cat > ${WORKDIR}/qt.conf <<EOF
+[Paths]
+Prefix =
+Binaries = ${STAGING_BINDIR_NATIVE}
+Headers = ${STAGING_INCDIR}/${QT_DIR_NAME}
+Plugins = ${STAGING_LIBDIR}/${QT_DIR_NAME}/plugins/
+Mkspecs = ${STAGING_DATADIR}/${QT_DIR_NAME}/mkspecs/
+EOF
+}
+
+addtask generate_qt_config_file after do_patch before do_configure
+
+qmake_base_do_configure() {
+	case ${QMAKESPEC} in
+	*linux-oe-g++|*linux-uclibc-oe-g++|*linux-gnueabi-oe-g++|*linux-uclibceabi-oe-g++|*linux-gnuspe-oe-g++|*linux-uclibcspe-oe-g++|*linux-gnun32-oe-g++)
+		;;
+	*-oe-g++)
+		die Unsupported target ${TARGET_OS} for oe-g++ qmake spec
+		;;
+	*)
+		bbnote Searching for qmake spec file
+		paths="${QMAKE_MKSPEC_PATH}/qws/${TARGET_OS}-${TARGET_ARCH}-g++"
+		paths="${QMAKE_MKSPEC_PATH}/${TARGET_OS}-g++ $paths"
+
+		if (echo "${TARGET_ARCH}"|grep -q 'i.86'); then
+			paths="${QMAKE_MKSPEC_PATH}/qws/${TARGET_OS}-x86-g++ $paths"
+		fi
+		for i in $paths; do
+			if test -e $i; then
+				export QMAKESPEC=$i
+				break
+			fi
+		done
+		;;
+	esac
+
+	bbnote "using qmake spec in ${QMAKESPEC}, using profiles '${QMAKE_PROFILES}'"
+
+	if [ -z "${QMAKE_PROFILES}" ]; then 
+		PROFILES="`ls *.pro`"
+	else
+		PROFILES="${QMAKE_PROFILES}"
+	fi
+
+	if [ -z "$PROFILES" ]; then
+		die "QMAKE_PROFILES not set and no profiles found in $PWD"
+        fi
+
+	if [ ! -z "${EXTRA_QMAKEVARS_POST}" ]; then
+		AFTER="-after"
+		QMAKE_VARSUBST_POST="${EXTRA_QMAKEVARS_POST}"
+		bbnote "qmake postvar substitution: ${EXTRA_QMAKEVARS_POST}"
+	fi
+
+	if [ ! -z "${EXTRA_QMAKEVARS_PRE}" ]; then
+		QMAKE_VARSUBST_PRE="${EXTRA_QMAKEVARS_PRE}"
+		bbnote "qmake prevar substitution: ${EXTRA_QMAKEVARS_PRE}"
+	fi
+
+	# Hack .pro files to use OE utilities
+	LCONVERT_NAME=$(basename ${OE_QMAKE_LCONVERT})
+	LRELEASE_NAME=$(basename ${OE_QMAKE_LRELEASE})
+	LUPDATE_NAME=$(basename ${OE_QMAKE_LUPDATE})
+	XMLPATTERNS_NAME=$(basename ${OE_QMAKE_XMLPATTERNS})
+	find -name '*.pro' \
+	     -exec sed -i -e "s|\(=\s*.*\)/$LCONVERT_NAME|\1/lconvert|g" \
+	                  -e "s|\(=\s*.*\)/$LRELEASE_NAME|\1/lrelease|g" \
+	                  -e "s|\(=\s*.*\)/$LUPDATE_NAME|\1/lupdate|g" \
+	                  -e "s|\(=\s*.*\)/$XMLPATTERNS_NAME|\1/xmlpatterns|g" \
+	                  -e "s|\(=\s*.*\)/lconvert|\1/$LCONVERT_NAME|g" \
+	                  -e "s|\(=\s*.*\)/lrelease|\1/$LRELEASE_NAME|g" \
+	                  -e "s|\(=\s*.*\)/lupdate|\1/$LUPDATE_NAME|g" \
+	                  -e "s|\(=\s*.*\)/xmlpatterns|\1/$XMLPATTERNS_NAME|g" \
+	                  '{}' ';'
+
+#bbnote "Calling '${OE_QMAKE_QMAKE} -makefile -spec ${QMAKESPEC} -o Makefile $QMAKE_VARSUBST_PRE $AFTER $PROFILES $QMAKE_VARSUBST_POST'"
+	unset QMAKESPEC || true
+	${OE_QMAKE_QMAKE} -makefile -spec ${QMAKESPEC} -o Makefile $QMAKE_VARSUBST_PRE $AFTER $PROFILES $QMAKE_VARSUBST_POST || die "Error calling ${OE_QMAKE_QMAKE} on $PROFILES"
+}
+
+EXPORT_FUNCTIONS do_configure
+
+addtask configure after do_unpack do_patch before do_compile
-- 
1.9.1


