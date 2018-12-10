Return-Path: <okonopli@cisco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1FA1E00C4D; Mon, 10 Dec 2018 04:53:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, HTML_OBFUSCATE_05_10,
	RCVD_IN_DNSWL_HI, 
	SPF_HELO_PASS,USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -7.5 USER_IN_DEF_DKIM_WL From: address is in the default DKIM
	white-list
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [173.38.203.54 listed in list.dnswl.org]
Received: from aer-iport-4.cisco.com (aer-iport-4.cisco.com [173.38.203.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5BB0E00C10
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2018 04:53:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=cisco.com; i=@cisco.com; l=100313; q=dns/txt;
	s=iport; t=1544446397; x=1545655997;
	h=to:from:subject:cc:message-id:date:mime-version;
	bh=KMNkH63+PDkghydOJqyV2HtuHIVKPCLhQw0b4x3NXKg=;
	b=aZ33UAzWugs1FB97pvUch5UopS9tvXqzsyA8zEx3Nmn11jHWFdlCqPFT
	X5brMNw6WbaSx0BqfMKP+RpwOE3COlCYJpVb2ceAVYMrAlSRB6L3OM3Km
	YGMZdBTs0FtQ0UH4TPNMbmAX4Uy9Th/lgDfeZINcfACHTQoLSMC75+Pxi k=;
X-IronPort-AV: E=Sophos;i="5.56,338,1539648000"; d="scan'208,217";a="8680923"
Received: from aer-iport-nat.cisco.com (HELO aer-core-1.cisco.com)
	([173.38.203.22])
	by aer-iport-4.cisco.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	10 Dec 2018 12:53:16 +0000
Received: from [10.63.15.135] ([10.63.15.135]) (authenticated bits=0)
	by aer-core-1.cisco.com (8.15.2/8.15.2) with ESMTPSA id wBACrFMG020294
	(version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NO);
	Mon, 10 Dec 2018 12:53:16 GMT
To: yocto@yoctoproject.org
From: Oleksii Konoplitskyi <okonopli@cisco.com>
Message-ID: <a14a8e30-2417-c600-5efc-56fc168560f4@cisco.com>
Date: Mon, 10 Dec 2018 14:53:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
X-Auto-Response-Suppress: DR, OOF, AutoReply
X-Authenticated-User: okonopli
X-Outbound-SMTP-Client: 10.63.15.135, [10.63.15.135]
X-Outbound-Node: aer-core-1.cisco.com
Cc: aborduno@cisco.com, xe-linux-external@cisco.com
Subject: [PATCH] ref-manual: add EXCLUDE_PACKAGES_FROM_SHLIBS description
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
X-List-Received-Date: Mon, 10 Dec 2018 12:53:19 -0000
Content-Type: multipart/alternative;
	boundary="------------49A3532B1599062EC94A0178"
Content-Language: en-US

--------------49A3532B1599062EC94A0178
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Some packages containing shared libraries might be registered as shlib
providers when they shouldn't (for example, the lib is for their private use
and must not generate any dependency).

EXCLUDE_FROM_SHLIBS is targeted at that, but it could be set for entire
recipe
only.

Variable EXCLUDE_PACKAGES_FROM_SHLIBS allows to set list of packages
that are
not candidates for shlib providers.

Signed-off-by:OleksiiKonoplitskyi<okonopli@cisco.com>
---
   documentation/ref-manual/ref-variables.xml | 28
++++++++++++++++++++++++++++
   1 file changed, 28 insertions(+)

diff --git a/documentation/ref-manual/ref-variables.xml
b/documentation/ref-manual/ref-variables.xml
index 595f2db..98d3f86 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -4289,6 +4289,34 @@
</glossdef>
</glossentry>

+ <glossentry
id='var-EXCLUDE_PACKAGES_FROM_SHLIBS'><glossterm>EXCLUDE_PACKAGES_FROM_SHLIBS</glossterm>
+ <info>
+ EXCLUDE_PACKAGES_FROM_SHLIBS[doc] = "Causes the
OpenEmbedded build system's shared libraries resolver to exclude
packages when scanning for shared libraries."
+ </info>
+ <glossdef>
+ <para role="glossdeffirst">
+<!-- <para role="glossdeffirst"><imagedata
fileref="figures/define-generic.png" /> -->
+ Triggers the OpenEmbedded build system's shared
libraries
+ resolver to exclude packages when scanning for
+ shared libraries.
+ The
<filename>EXCLUDE_PACKAGES_FROM_SHLIBS</filename> variable is
+ similar to the
+ <link
linkend='var-EXCLUDE_FROM_SHLIBS'><filename>EXCLUDE_FROM_SHLIBS</filename></link>
+ variable, which excludes all the packages provided
by recipe
+ and not excludes particular package.
+ </para>
+
+ <para>
+ Use the
+ <filename>EXCLUDE_PACKAGES_FROM_SHLIBS</filename> variable as a list
of packages that
+ are not candidates for shared libraries providers:
+ <literallayout class='monospaced'>
+ EXCLUDE_PACKAGES_FROM_SHLIBS += "glibc-ptest glibc-dev"
+ </literallayout>
+ </para>
+ </glossdef>
+ </glossentry>
+
<glossentry
id='var-EXCLUDE_FROM_WORLD'><glossterm>EXCLUDE_FROM_WORLD</glossterm>
<info>
EXCLUDE_FROM_WORLD[doc] = "Directs BitBake to exclude
a recipe from world builds (i.e. bitbake world)."
--
2.7.4


--------------49A3532B1599062EC94A0178
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">Some packages
        containing shared libraries might be registered as shlib</span><br
        style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">providers
        when they shouldn't (for example, the lib is for their private
        use</span><br style="color: rgb(33, 33, 33); font-family:
        &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI
        WPC&quot;, Tahoma, Arial, sans-serif; font-size: 13.3333px;
        font-style: normal; font-variant-ligatures: normal;
        font-variant-caps: normal; font-weight: 400; letter-spacing:
        normal; orphans: 2; text-align: start; text-indent: 0px;
        text-transform: none; white-space: normal; widows: 2;
        word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255); text-decoration-style:
        initial; text-decoration-color: initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">and must not
        generate any dependency).</span><br style="color: rgb(33, 33,
        33); font-family: &quot;Segoe UI&quot;, &quot;Segoe WP&quot;,
        &quot;Segoe UI WPC&quot;, Tahoma, Arial, sans-serif; font-size:
        13.3333px; font-style: normal; font-variant-ligatures: normal;
        font-variant-caps: normal; font-weight: 400; letter-spacing:
        normal; orphans: 2; text-align: start; text-indent: 0px;
        text-transform: none; white-space: normal; widows: 2;
        word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255); text-decoration-style:
        initial; text-decoration-color: initial;">
      <br style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">EXCLUDE_FROM_SHLIBS
        is targeted at that, but it could be set for entire<span> </span></span><br
        style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">recipe</span><br
        style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">only.</span><br
        style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <br style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">Variable
        EXCLUDE_PACKAGES_FROM_SHLIBS allows to set list of packages<span> </span></span><br
        style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">that are</span><br
        style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">not
        candidates for shlib providers.</span><br style="color: rgb(33,
        33, 33); font-family: &quot;Segoe UI&quot;, &quot;Segoe
        WP&quot;, &quot;Segoe UI WPC&quot;, Tahoma, Arial, sans-serif;
        font-size: 13.3333px; font-style: normal;
        font-variant-ligatures: normal; font-variant-caps: normal;
        font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <br style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">Signed-off-by:<span> </span></span><span
        class="highlight" id="0.35499705656760927"
        name="searchHitInReadingPane" style="background-color: rgb(255,
        238, 148); color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; text-decoration-style: initial;
        text-decoration-color: initial;">Oleksii</span><span
        style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;"><span> </span></span><span
        class="highlight" id="0.38659650562062264"
        name="searchHitInReadingPane" style="background-color: rgb(255,
        238, 148); color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; text-decoration-style: initial;
        text-decoration-color: initial;">Konoplitskyi</span><span
        style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;"><span> </span><a class="moz-txt-link-rfc2396E" href="mailto:okonopli@cisco.com">&lt;okonopli@cisco.com&gt;</a></span><br
        style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">---</span><br
        style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">  documentation/ref-manual/ref-variables.xml
        | 28<span> </span></span><br style="color: rgb(33, 33, 33);
        font-family: &quot;Segoe UI&quot;, &quot;Segoe WP&quot;,
        &quot;Segoe UI WPC&quot;, Tahoma, Arial, sans-serif; font-size:
        13.3333px; font-style: normal; font-variant-ligatures: normal;
        font-variant-caps: normal; font-weight: 400; letter-spacing:
        normal; orphans: 2; text-align: start; text-indent: 0px;
        text-transform: none; white-space: normal; widows: 2;
        word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255); text-decoration-style:
        initial; text-decoration-color: initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">++++++++++++++++++++++++++++</span><br
        style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">  1 file
        changed, 28 insertions(+)</span><br style="color: rgb(33, 33,
        33); font-family: &quot;Segoe UI&quot;, &quot;Segoe WP&quot;,
        &quot;Segoe UI WPC&quot;, Tahoma, Arial, sans-serif; font-size:
        13.3333px; font-style: normal; font-variant-ligatures: normal;
        font-variant-caps: normal; font-weight: 400; letter-spacing:
        normal; orphans: 2; text-align: start; text-indent: 0px;
        text-transform: none; white-space: normal; widows: 2;
        word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255); text-decoration-style:
        initial; text-decoration-color: initial;">
      <br style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">diff --git
        a/documentation/ref-manual/ref-variables.xml<span> </span></span><br
        style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">b/documentation/ref-manual/ref-variables.xml</span><br
        style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">index
        595f2db..98d3f86 100644</span><br style="color: rgb(33, 33, 33);
        font-family: &quot;Segoe UI&quot;, &quot;Segoe WP&quot;,
        &quot;Segoe UI WPC&quot;, Tahoma, Arial, sans-serif; font-size:
        13.3333px; font-style: normal; font-variant-ligatures: normal;
        font-variant-caps: normal; font-weight: 400; letter-spacing:
        normal; orphans: 2; text-align: start; text-indent: 0px;
        text-transform: none; white-space: normal; widows: 2;
        word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255); text-decoration-style:
        initial; text-decoration-color: initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">---
        a/documentation/ref-manual/ref-variables.xml</span><br
        style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">+++
        b/documentation/ref-manual/ref-variables.xml</span><br
        style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">@@ -4289,6
        +4289,34 @@</span><br style="color: rgb(33, 33, 33);
        font-family: &quot;Segoe UI&quot;, &quot;Segoe WP&quot;,
        &quot;Segoe UI WPC&quot;, Tahoma, Arial, sans-serif; font-size:
        13.3333px; font-style: normal; font-variant-ligatures: normal;
        font-variant-caps: normal; font-weight: 400; letter-spacing:
        normal; orphans: 2; text-align: start; text-indent: 0px;
        text-transform: none; white-space: normal; widows: 2;
        word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255); text-decoration-style:
        initial; text-decoration-color: initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">             
        &lt;/glossdef&gt;</span><br style="color: rgb(33, 33, 33);
        font-family: &quot;Segoe UI&quot;, &quot;Segoe WP&quot;,
        &quot;Segoe UI WPC&quot;, Tahoma, Arial, sans-serif; font-size:
        13.3333px; font-style: normal; font-variant-ligatures: normal;
        font-variant-caps: normal; font-weight: 400; letter-spacing:
        normal; orphans: 2; text-align: start; text-indent: 0px;
        text-transform: none; white-space: normal; widows: 2;
        word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255); text-decoration-style:
        initial; text-decoration-color: initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">         
        &lt;/glossentry&gt;</span><br style="color: rgb(33, 33, 33);
        font-family: &quot;Segoe UI&quot;, &quot;Segoe WP&quot;,
        &quot;Segoe UI WPC&quot;, Tahoma, Arial, sans-serif; font-size:
        13.3333px; font-style: normal; font-variant-ligatures: normal;
        font-variant-caps: normal; font-weight: 400; letter-spacing:
        normal; orphans: 2; text-align: start; text-indent: 0px;
        text-transform: none; white-space: normal; widows: 2;
        word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255); text-decoration-style:
        initial; text-decoration-color: initial;">
      <br style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">+       
        &lt;glossentry<span> </span></span><br style="color: rgb(33, 33,
        33); font-family: &quot;Segoe UI&quot;, &quot;Segoe WP&quot;,
        &quot;Segoe UI WPC&quot;, Tahoma, Arial, sans-serif; font-size:
        13.3333px; font-style: normal; font-variant-ligatures: normal;
        font-variant-caps: normal; font-weight: 400; letter-spacing:
        normal; orphans: 2; text-align: start; text-indent: 0px;
        text-transform: none; white-space: normal; widows: 2;
        word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255); text-decoration-style:
        initial; text-decoration-color: initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">id='var-EXCLUDE_PACKAGES_FROM_SHLIBS'&gt;&lt;glossterm&gt;EXCLUDE_PACKAGES_FROM_SHLIBS&lt;/glossterm&gt;</span><br
        style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">+           
        &lt;info&gt;</span><br style="color: rgb(33, 33, 33);
        font-family: &quot;Segoe UI&quot;, &quot;Segoe WP&quot;,
        &quot;Segoe UI WPC&quot;, Tahoma, Arial, sans-serif; font-size:
        13.3333px; font-style: normal; font-variant-ligatures: normal;
        font-variant-caps: normal; font-weight: 400; letter-spacing:
        normal; orphans: 2; text-align: start; text-indent: 0px;
        text-transform: none; white-space: normal; widows: 2;
        word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255); text-decoration-style:
        initial; text-decoration-color: initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">+               
        EXCLUDE_PACKAGES_FROM_SHLIBS[doc] = "Causes the<span> </span></span><br
        style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">OpenEmbedded
        build system's shared libraries resolver to exclude<span> </span></span><br
        style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">packages when
        scanning for shared libraries."</span><br style="color: rgb(33,
        33, 33); font-family: &quot;Segoe UI&quot;, &quot;Segoe
        WP&quot;, &quot;Segoe UI WPC&quot;, Tahoma, Arial, sans-serif;
        font-size: 13.3333px; font-style: normal;
        font-variant-ligatures: normal; font-variant-caps: normal;
        font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">+           
        &lt;/info&gt;</span><br style="color: rgb(33, 33, 33);
        font-family: &quot;Segoe UI&quot;, &quot;Segoe WP&quot;,
        &quot;Segoe UI WPC&quot;, Tahoma, Arial, sans-serif; font-size:
        13.3333px; font-style: normal; font-variant-ligatures: normal;
        font-variant-caps: normal; font-weight: 400; letter-spacing:
        normal; orphans: 2; text-align: start; text-indent: 0px;
        text-transform: none; white-space: normal; widows: 2;
        word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255); text-decoration-style:
        initial; text-decoration-color: initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">+           
        &lt;glossdef&gt;</span><br style="color: rgb(33, 33, 33);
        font-family: &quot;Segoe UI&quot;, &quot;Segoe WP&quot;,
        &quot;Segoe UI WPC&quot;, Tahoma, Arial, sans-serif; font-size:
        13.3333px; font-style: normal; font-variant-ligatures: normal;
        font-variant-caps: normal; font-weight: 400; letter-spacing:
        normal; orphans: 2; text-align: start; text-indent: 0px;
        text-transform: none; white-space: normal; widows: 2;
        word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255); text-decoration-style:
        initial; text-decoration-color: initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">+               
        &lt;para role="glossdeffirst"&gt;</span><br style="color:
        rgb(33, 33, 33); font-family: &quot;Segoe UI&quot;, &quot;Segoe
        WP&quot;, &quot;Segoe UI WPC&quot;, Tahoma, Arial, sans-serif;
        font-size: 13.3333px; font-style: normal;
        font-variant-ligatures: normal; font-variant-caps: normal;
        font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">+&lt;!--               
        &lt;para role="glossdeffirst"&gt;&lt;imagedata<span> </span></span><br
        style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">fileref="figures/define-generic.png"
        /&gt; --&gt;</span><br style="color: rgb(33, 33, 33);
        font-family: &quot;Segoe UI&quot;, &quot;Segoe WP&quot;,
        &quot;Segoe UI WPC&quot;, Tahoma, Arial, sans-serif; font-size:
        13.3333px; font-style: normal; font-variant-ligatures: normal;
        font-variant-caps: normal; font-weight: 400; letter-spacing:
        normal; orphans: 2; text-align: start; text-indent: 0px;
        text-transform: none; white-space: normal; widows: 2;
        word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255); text-decoration-style:
        initial; text-decoration-color: initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">+                   
        Triggers the OpenEmbedded build system's shared<span> </span></span><br
        style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">libraries</span><br
        style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">+                   
        resolver to exclude packages when scanning for</span><br
        style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">+                   
        shared libraries.</span><br style="color: rgb(33, 33, 33);
        font-family: &quot;Segoe UI&quot;, &quot;Segoe WP&quot;,
        &quot;Segoe UI WPC&quot;, Tahoma, Arial, sans-serif; font-size:
        13.3333px; font-style: normal; font-variant-ligatures: normal;
        font-variant-caps: normal; font-weight: 400; letter-spacing:
        normal; orphans: 2; text-align: start; text-indent: 0px;
        text-transform: none; white-space: normal; widows: 2;
        word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255); text-decoration-style:
        initial; text-decoration-color: initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">+                   
        The<span> </span></span><br style="color: rgb(33, 33, 33);
        font-family: &quot;Segoe UI&quot;, &quot;Segoe WP&quot;,
        &quot;Segoe UI WPC&quot;, Tahoma, Arial, sans-serif; font-size:
        13.3333px; font-style: normal; font-variant-ligatures: normal;
        font-variant-caps: normal; font-weight: 400; letter-spacing:
        normal; orphans: 2; text-align: start; text-indent: 0px;
        text-transform: none; white-space: normal; widows: 2;
        word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255); text-decoration-style:
        initial; text-decoration-color: initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">&lt;filename&gt;EXCLUDE_PACKAGES_FROM_SHLIBS&lt;/filename&gt;
        variable is</span><br style="color: rgb(33, 33, 33);
        font-family: &quot;Segoe UI&quot;, &quot;Segoe WP&quot;,
        &quot;Segoe UI WPC&quot;, Tahoma, Arial, sans-serif; font-size:
        13.3333px; font-style: normal; font-variant-ligatures: normal;
        font-variant-caps: normal; font-weight: 400; letter-spacing:
        normal; orphans: 2; text-align: start; text-indent: 0px;
        text-transform: none; white-space: normal; widows: 2;
        word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255); text-decoration-style:
        initial; text-decoration-color: initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">+                   
        similar to the</span><br style="color: rgb(33, 33, 33);
        font-family: &quot;Segoe UI&quot;, &quot;Segoe WP&quot;,
        &quot;Segoe UI WPC&quot;, Tahoma, Arial, sans-serif; font-size:
        13.3333px; font-style: normal; font-variant-ligatures: normal;
        font-variant-caps: normal; font-weight: 400; letter-spacing:
        normal; orphans: 2; text-align: start; text-indent: 0px;
        text-transform: none; white-space: normal; widows: 2;
        word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255); text-decoration-style:
        initial; text-decoration-color: initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">+                   
        &lt;link<span> </span></span><br style="color: rgb(33, 33, 33);
        font-family: &quot;Segoe UI&quot;, &quot;Segoe WP&quot;,
        &quot;Segoe UI WPC&quot;, Tahoma, Arial, sans-serif; font-size:
        13.3333px; font-style: normal; font-variant-ligatures: normal;
        font-variant-caps: normal; font-weight: 400; letter-spacing:
        normal; orphans: 2; text-align: start; text-indent: 0px;
        text-transform: none; white-space: normal; widows: 2;
        word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255); text-decoration-style:
        initial; text-decoration-color: initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">linkend='var-EXCLUDE_FROM_SHLIBS'&gt;&lt;filename&gt;EXCLUDE_FROM_SHLIBS&lt;/filename&gt;&lt;/link&gt;</span><br
        style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">+                   
        variable, which excludes all the packages provided<span> </span></span><br
        style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">by recipe</span><br
        style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">+                   
        and not excludes particular package.</span><br style="color:
        rgb(33, 33, 33); font-family: &quot;Segoe UI&quot;, &quot;Segoe
        WP&quot;, &quot;Segoe UI WPC&quot;, Tahoma, Arial, sans-serif;
        font-size: 13.3333px; font-style: normal;
        font-variant-ligatures: normal; font-variant-caps: normal;
        font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">+               
        &lt;/para&gt;</span><br style="color: rgb(33, 33, 33);
        font-family: &quot;Segoe UI&quot;, &quot;Segoe WP&quot;,
        &quot;Segoe UI WPC&quot;, Tahoma, Arial, sans-serif; font-size:
        13.3333px; font-style: normal; font-variant-ligatures: normal;
        font-variant-caps: normal; font-weight: 400; letter-spacing:
        normal; orphans: 2; text-align: start; text-indent: 0px;
        text-transform: none; white-space: normal; widows: 2;
        word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255); text-decoration-style:
        initial; text-decoration-color: initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">+</span><br
        style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">+               
        &lt;para&gt;</span><br style="color: rgb(33, 33, 33);
        font-family: &quot;Segoe UI&quot;, &quot;Segoe WP&quot;,
        &quot;Segoe UI WPC&quot;, Tahoma, Arial, sans-serif; font-size:
        13.3333px; font-style: normal; font-variant-ligatures: normal;
        font-variant-caps: normal; font-weight: 400; letter-spacing:
        normal; orphans: 2; text-align: start; text-indent: 0px;
        text-transform: none; white-space: normal; widows: 2;
        word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255); text-decoration-style:
        initial; text-decoration-color: initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">+                   
        Use the</span><br style="color: rgb(33, 33, 33); font-family:
        &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI
        WPC&quot;, Tahoma, Arial, sans-serif; font-size: 13.3333px;
        font-style: normal; font-variant-ligatures: normal;
        font-variant-caps: normal; font-weight: 400; letter-spacing:
        normal; orphans: 2; text-align: start; text-indent: 0px;
        text-transform: none; white-space: normal; widows: 2;
        word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255); text-decoration-style:
        initial; text-decoration-color: initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">+
        &lt;filename&gt;EXCLUDE_PACKAGES_FROM_SHLIBS&lt;/filename&gt;
        variable as a list<span> </span></span><br style="color: rgb(33,
        33, 33); font-family: &quot;Segoe UI&quot;, &quot;Segoe
        WP&quot;, &quot;Segoe UI WPC&quot;, Tahoma, Arial, sans-serif;
        font-size: 13.3333px; font-style: normal;
        font-variant-ligatures: normal; font-variant-caps: normal;
        font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">of packages
        that</span><br style="color: rgb(33, 33, 33); font-family:
        &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI
        WPC&quot;, Tahoma, Arial, sans-serif; font-size: 13.3333px;
        font-style: normal; font-variant-ligatures: normal;
        font-variant-caps: normal; font-weight: 400; letter-spacing:
        normal; orphans: 2; text-align: start; text-indent: 0px;
        text-transform: none; white-space: normal; widows: 2;
        word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255); text-decoration-style:
        initial; text-decoration-color: initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">+                   
        are not candidates for shared libraries providers:</span><br
        style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">+                   
        &lt;literallayout class='monospaced'&gt;</span><br style="color:
        rgb(33, 33, 33); font-family: &quot;Segoe UI&quot;, &quot;Segoe
        WP&quot;, &quot;Segoe UI WPC&quot;, Tahoma, Arial, sans-serif;
        font-size: 13.3333px; font-style: normal;
        font-variant-ligatures: normal; font-variant-caps: normal;
        font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">+    
        EXCLUDE_PACKAGES_FROM_SHLIBS += "glibc-ptest glibc-dev"</span><br
        style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">+                   
        &lt;/literallayout&gt;</span><br style="color: rgb(33, 33, 33);
        font-family: &quot;Segoe UI&quot;, &quot;Segoe WP&quot;,
        &quot;Segoe UI WPC&quot;, Tahoma, Arial, sans-serif; font-size:
        13.3333px; font-style: normal; font-variant-ligatures: normal;
        font-variant-caps: normal; font-weight: 400; letter-spacing:
        normal; orphans: 2; text-align: start; text-indent: 0px;
        text-transform: none; white-space: normal; widows: 2;
        word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255); text-decoration-style:
        initial; text-decoration-color: initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">+               
        &lt;/para&gt;</span><br style="color: rgb(33, 33, 33);
        font-family: &quot;Segoe UI&quot;, &quot;Segoe WP&quot;,
        &quot;Segoe UI WPC&quot;, Tahoma, Arial, sans-serif; font-size:
        13.3333px; font-style: normal; font-variant-ligatures: normal;
        font-variant-caps: normal; font-weight: 400; letter-spacing:
        normal; orphans: 2; text-align: start; text-indent: 0px;
        text-transform: none; white-space: normal; widows: 2;
        word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255); text-decoration-style:
        initial; text-decoration-color: initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">+           
        &lt;/glossdef&gt;</span><br style="color: rgb(33, 33, 33);
        font-family: &quot;Segoe UI&quot;, &quot;Segoe WP&quot;,
        &quot;Segoe UI WPC&quot;, Tahoma, Arial, sans-serif; font-size:
        13.3333px; font-style: normal; font-variant-ligatures: normal;
        font-variant-caps: normal; font-weight: 400; letter-spacing:
        normal; orphans: 2; text-align: start; text-indent: 0px;
        text-transform: none; white-space: normal; widows: 2;
        word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255); text-decoration-style:
        initial; text-decoration-color: initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">+       
        &lt;/glossentry&gt;</span><br style="color: rgb(33, 33, 33);
        font-family: &quot;Segoe UI&quot;, &quot;Segoe WP&quot;,
        &quot;Segoe UI WPC&quot;, Tahoma, Arial, sans-serif; font-size:
        13.3333px; font-style: normal; font-variant-ligatures: normal;
        font-variant-caps: normal; font-weight: 400; letter-spacing:
        normal; orphans: 2; text-align: start; text-indent: 0px;
        text-transform: none; white-space: normal; widows: 2;
        word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255); text-decoration-style:
        initial; text-decoration-color: initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">+</span><br
        style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">         
        &lt;glossentry<span> </span></span><br style="color: rgb(33, 33,
        33); font-family: &quot;Segoe UI&quot;, &quot;Segoe WP&quot;,
        &quot;Segoe UI WPC&quot;, Tahoma, Arial, sans-serif; font-size:
        13.3333px; font-style: normal; font-variant-ligatures: normal;
        font-variant-caps: normal; font-weight: 400; letter-spacing:
        normal; orphans: 2; text-align: start; text-indent: 0px;
        text-transform: none; white-space: normal; widows: 2;
        word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255); text-decoration-style:
        initial; text-decoration-color: initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">id='var-EXCLUDE_FROM_WORLD'&gt;&lt;glossterm&gt;EXCLUDE_FROM_WORLD&lt;/glossterm&gt;</span><br
        style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">             
        &lt;info&gt;</span><br style="color: rgb(33, 33, 33);
        font-family: &quot;Segoe UI&quot;, &quot;Segoe WP&quot;,
        &quot;Segoe UI WPC&quot;, Tahoma, Arial, sans-serif; font-size:
        13.3333px; font-style: normal; font-variant-ligatures: normal;
        font-variant-caps: normal; font-weight: 400; letter-spacing:
        normal; orphans: 2; text-align: start; text-indent: 0px;
        text-transform: none; white-space: normal; widows: 2;
        word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255); text-decoration-style:
        initial; text-decoration-color: initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">                 
        EXCLUDE_FROM_WORLD[doc] = "Directs BitBake to exclude<span> </span></span><br
        style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">a recipe from
        world builds (i.e. bitbake world)."</span><br style="color:
        rgb(33, 33, 33); font-family: &quot;Segoe UI&quot;, &quot;Segoe
        WP&quot;, &quot;Segoe UI WPC&quot;, Tahoma, Arial, sans-serif;
        font-size: 13.3333px; font-style: normal;
        font-variant-ligatures: normal; font-variant-caps: normal;
        font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">--<span> </span></span><br
        style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">2.7.4</span><br
        style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(33, 33, 33); font-family: &quot;Segoe
        UI&quot;, &quot;Segoe WP&quot;, &quot;Segoe UI WPC&quot;,
        Tahoma, Arial, sans-serif; font-size: 13.3333px; font-style:
        normal; font-variant-ligatures: normal; font-variant-caps:
        normal; font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: start; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;"><span><br>
        </span></span></p>
  </body>
</html>

--------------49A3532B1599062EC94A0178--
