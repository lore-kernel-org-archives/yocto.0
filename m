Return-Path: <mwelchuk@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DB92E00C45; Mon, 13 Nov 2017 10:18:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83AFCE009B4
	for <yocto@yoctoproject.org>; Mon, 13 Nov 2017 10:17:59 -0800 (PST)
Received: by mail-wm0-f65.google.com with SMTP id t139so17174018wmt.1
	for <yocto@yoctoproject.org>; Mon, 13 Nov 2017 10:17:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=f5i4SWcJ+q1kWn44jktdJmfmA6q9VnCtuCi+d4AqiXw=;
	b=e1QbecSDjUueHhF7xvAmINdbzk71gVkrylnPIvNXhcmhgNTTog/wHH7zKZ2A3xlR2b
	wYsQn5mGnr/6JVaHJ5GA2FGZ+qCU8D3yyt8EKtOphTQY/nNVLjFvyohnROUvkuuKvy6V
	SNlDlz3pp3W+ODMQieugX1G84HO0zPMdqZX6unKVnRXk8+VYQIz9lXHysp4ACGfk+jmr
	1l5aqKH7/gXuzJQQvxGVMXchCxQyhPB7JfHS+UryLJSHa8CoPL0A32QlAEx1qp5Xv6qf
	97y6eX00NnVQpzYWwbGs1pv9R8JyyHATtr7j7Ru5tACgNn9yuhrRd1Z/RHKh+QlUs3ei
	Fy6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:in-reply-to:references;
	bh=f5i4SWcJ+q1kWn44jktdJmfmA6q9VnCtuCi+d4AqiXw=;
	b=r5HCbvCw+ZIK215Uy1Fc//359t7KIOEfVM/ifJqVB1ko5+driboKj0QAzfUVBI7iRC
	JWNUqrFP+mcQoT+8EpyeHi4ovwF/94SY0ndluyLlphDjIHqaVgQsTTCabVX0/QHQtbKo
	iW1ePfz4Trj49shHrZ6Bncewpw5uGQVxBsDonqTgCe1fOMaVkgCXwX8N4RKXdp9otySz
	dJsyhyuZ3l8t5eOFT/LO4r37yIvwFpWOeplqC+3fjTqDpv1hUSzjbCcwNBztBqYyOH/b
	kARjPpePZmz2pfG2hvO+J31BuA4cV8sqXPQCT/4yhjBn2dn7dF6VAsZRhig93vp9Xs0h
	t+Uw==
X-Gm-Message-State: AJaThX7Wzcocmtc2Lkn70gRdRZjIJkHZBnoVodhSEba/qjS+glIiEoKb
	D7N23gkY4fiKKt9/dq0PRjZHJQ==
X-Google-Smtp-Source: AGs4zMYnbF9NIoWuYhR0Mr1yvWv7xrTgBLis+9j+H9MumLVLa/fzFEkgyKtEJaW8+/M1s54ba6zw8g==
X-Received: by 10.28.134.133 with SMTP id i127mr6442093wmd.79.1510597077937;
	Mon, 13 Nov 2017 10:17:57 -0800 (PST)
Received: from hades (host86-128-5-67.range86-128.btcentralplus.com.
	[86.128.5.67]) by smtp.gmail.com with ESMTPSA id
	185sm9196463wmj.33.2017.11.13.10.17.57
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 13 Nov 2017 10:17:57 -0800 (PST)
Sender: Martyn Welch <mwelchuk@gmail.com>
Received: from martyn by hades with local (Exim 4.84_2)
	(envelope-from <martyn@hades.home>)
	id 1eEJIy-0006OT-AS; Mon, 13 Nov 2017 18:17:56 +0000
From: Martyn Welch <martyn@welchs.me.uk>
To: yocto@yoctoproject.org,
	openembedded-core@lists.openembedded.org
Date: Mon, 13 Nov 2017 18:17:54 +0000
Message-Id: <1510597074-24537-2-git-send-email-martyn@welchs.me.uk>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1510597074-24537-1-git-send-email-martyn@welchs.me.uk>
References: <1510597074-24537-1-git-send-email-martyn@welchs.me.uk>
X-Mailman-Approved-At: Mon, 13 Nov 2017 13:34:30 -0800
Cc: Martyn Welch <martyn@welchs.me.uk>
Subject: [PATCH 2/2] ref-manual: Add documentation for prohibited-path QA test
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
X-List-Received-Date: Mon, 13 Nov 2017 18:18:00 -0000

Add documentation for the prohibited-path QA test and associated
PROHIBITED_PATH variable.

Signed-off-by: Martyn Welch <martyn@welchs.me.uk>
---
 documentation/ref-manual/ref-classes.xml   |  5 +++++
 documentation/ref-manual/ref-variables.xml | 25 +++++++++++++++++++++++++
 2 files changed, 30 insertions(+)

diff --git a/documentation/ref-manual/ref-classes.xml b/documentation/ref-manual/ref-classes.xml
index 5961d3e..15f5586 100644
--- a/documentation/ref-manual/ref-classes.xml
+++ b/documentation/ref-manual/ref-classes.xml
@@ -1714,6 +1714,11 @@
                 <filename>FILES_${PN} = "xyz"</filename> effectively turn into
                 <filename>FILES = "xyz"</filename>.
                 </para></listitem>
+            <listitem><para><emphasis><filename>prohibited-path:</filename></emphasis>
+                Checks that a recipe does not package and files in locations
+                specified in
+                <link linkend='var-PROHIBITED_PATH'><filename>PROHIBITED_PATH</filename></link>.
+                </para></listitem>
            <listitem><para><emphasis><filename>rpaths:</filename></emphasis>
                 Checks for rpaths in the binaries that contain build system paths such
                 as <filename>TMPDIR</filename>.
diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
index e31aa21..0bdbbba 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -10820,6 +10820,31 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
             </glossdef>
         </glossentry>
 
+        <glossentry id='var-PROHIBITED_PATH'><glossterm>PROHIBITED_PATH</glossterm>
+            <info>
+                PROHIBITED_PATH[doc] = "A list of paths in which recipes are prohibited from installing."
+            </info>
+            <glossdef>
+                <para role="glossdeffirst">
+<!--                <para role="glossdeffirst"><imagedata fileref="figures/define-generic.png" /> -->
+                    A list of paths in which recipes are prohibited from
+                    installing.
+                    Paths can be provided for specific locations or may include
+                    a wildcard asterisk at the end to ensure nothing is
+                    installed under the path provided.
+                </para>
+
+                <para>
+                    For example, the following
+                    <filename>PROHIBITED_PATH</filename> ensures no packages
+                    install anything under <filename>/mnt</filename>:
+                    <literallayout class='monospaced'>
+     PROHIBITED_PATH += "/mnt/*"
+                    </literallayout>
+                </para>
+            </glossdef>
+        </glossentry>
+
         <glossentry id='var-PROVIDES'><glossterm>PROVIDES</glossterm>
             <info>
                 PROVIDES[doc] = "A list of aliases that a recipe also provides. These aliases are useful for satisfying dependencies of other recipes during the build as specified by DEPENDS."
-- 
2.1.4


