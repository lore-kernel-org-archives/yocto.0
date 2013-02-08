Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 2D9DEE01471
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 05:24:47 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id BEBAC402D6;
	Fri,  8 Feb 2013 13:44:18 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Fri,  8 Feb 2013 14:24:42 +0100
Message-Id: <6cf61eaf7ff00b7599ec2ef0f1f4ebad6882d4e7.1360320932.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <adcdc2863dd623f92ddebc37001560ad50e6a8aa.1360320932.git.timo.mueller@bmw-carit.de>
References: <cover.1360320932.git.timo.mueller@bmw-carit.de>
	<a6e4255f26d3e1023c2f1b5cefab155606051238.1360320932.git.timo.mueller@bmw-carit.de>
	<5ea21b7fbee999dedbd9e17f8e1f7202fa526204.1360320932.git.timo.mueller@bmw-carit.de>
	<a425e9190c797e43c4d00ffdfdc6734fe68a0437.1360320932.git.timo.mueller@bmw-carit.de>
	<68de3739abb8de52bbc3e42769b14a745a47f7f4.1360320932.git.timo.mueller@bmw-carit.de>
	<8475114cd09e7b7ba916975b61f95183de105e4d.1360320932.git.timo.mueller@bmw-carit.de>
	<305fd42ed6500d248ef6a0662e68fbad6f7b2fe4.1360320932.git.timo.mueller@bmw-carit.de>
	<56fd294cb47b29fcea6f3006b9dcd360866d7d68.1360320932.git.timo.mueller@bmw-carit.de>
	<16b4f90332e22cf61937a70a8469f78a58d1790b.1360320932.git.timo.mueller@bmw-carit.de>
	<3d62d994c01a6fbdc3baf0ee2de7e89c1ddbaaf7.1360320932.git.timo.mueller@bmw-carit.de>
	<ff35d573a922d6da65722546453f598a8c119103.1360320932.git.timo.mueller@bmw-carit.de>
	<adcdc2863dd623f92ddebc37001560ad50e6a8aa.1360320932.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1360320932.git.timo.mueller@bmw-carit.de>
References: <cover.1360320932.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC v5 12/12] scripts/build.sh: Add documentation generation to the default build
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 08 Feb 2013 13:24:47 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

When building the plugin the matching documentation is automatically
generated and added to the user.doc plugin prior to the plugin build.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 scripts/build.sh | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/scripts/build.sh b/scripts/build.sh
index 73bf889..a1b420c 100755
--- a/scripts/build.sh
+++ b/scripts/build.sh
@@ -130,6 +130,13 @@ git checkout origin/${BRANCH} || fail $? "git checkout origin/${BRANCH}"
 git checkout ${TAG} || fail $? "git checkout ${TAG}"
 cd ${TOP}
 
+# generate and add documentation
+if [ "${TAG}" = "HEAD" ]; then
+	${GIT_DIR}/scripts/generate-doc.sh ${BRANCH} ${GIT_DIR}
+else
+	${GIT_DIR}/scripts/generate-doc.sh -t ${TAG} ${GIT_DIR}
+fi
+
 #build 
 java -jar ${LAUNCHER} -application org.eclipse.ant.core.antRunner -buildfile ${BUILDFILE} -DbaseLocation=${ECLIPSE_BASE} -Dbuilder=${GIT_DIR}/features/org.yocto.bc.headless.build -DbuildDirectory=${BUILD_DIR} -DotherSrcDirectory=${GIT_DIR} -DbuildId=${RELEASE} || fail $? "normal build"
 java -jar ${LAUNCHER} -application org.eclipse.ant.core.antRunner -buildfile ${BUILDFILE} -DbaseLocation=${ECLIPSE_BASE} -Dbuilder=${GIT_DIR}/features/org.yocto.doc.headless.build -DbuildDirectory=${BUILD_DIR} -DotherSrcDirectory=${GIT_DIR} -DbuildId=${RELEASE} || fail $? "normal build"
-- 
1.7.11.7


