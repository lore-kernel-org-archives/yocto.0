Return-Path: <vm.rod25@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F386E00BFF; Wed, 19 Jul 2017 04:07:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vm.rod25[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.68 listed in dnsbl.sorbs.net]
Received: from mail-oi0-f68.google.com (mail-oi0-f68.google.com
	[209.85.218.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15A73E00BBC
	for <yocto@yoctoproject.org>; Wed, 19 Jul 2017 04:07:01 -0700 (PDT)
Received: by mail-oi0-f68.google.com with SMTP id h143so3604559oic.2
	for <yocto@yoctoproject.org>; Wed, 19 Jul 2017 04:07:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=rWrnCrDxoqw+ROIGQzlDehWTHeOqhg1xF2L819Cajc8=;
	b=fRcq13i8GZsGRCod8aexUjiqFrT6M5IzYaatl3RYVhJAXRVW4oYQj2Xcy0s/yR3aK0
	tNwH/iqqv48KFEyt6QBny5lDRfuRoyVtafninkGSZGd+MsOqpNXQ8BS11OoJZU1apwjb
	1ZQtv4qxMKO7UQEkDGVyuXdvxf+qLKq7l3xpwwo2NDNYErvdRpPSRLpZyvgdF9PIy63I
	Q//SSVmo7olalodr2L4jC8oibcHQIBzZGUOlYN1nIpJhnUTcSv5P1+buGL2ASD+qa511
	otCf9iEL8dlr2KV75ZGEmJa721zttZQAZL9FJY/k7OqG3VEw5QfqmnQ7CSk00ZKu8v5j
	gCeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=rWrnCrDxoqw+ROIGQzlDehWTHeOqhg1xF2L819Cajc8=;
	b=mxN9lF5jIsYbKLCctpmj7QABBvhwl0XbrQb8v99oX4cd8jYzTAIdnsbSmr7kn2ob57
	/uGvS86O7y8+r3yaADlYm6H6UCyZn3AWq/zFeSXavKQHGFxsPHAKRZMLm9EF6+ycsoAK
	jn942hx2OD/71IFryhNn6BQw89VjRSUpaYO9Y72ftJzRykSGMHL+Xa5am50VkPyZ58fb
	38C1rb6zZEQ3rU5t4aUuabB8V7U/tz3inzvwSTj8T3L7EXDyBHeOIpycnvMf1Rmh36mF
	J4eallfSnLgDpTjalo5tNU+1bt9ZW93FV1l5yzWPAiktXFbwW20thlBpP5OpmssAdqN6
	wLFg==
X-Gm-Message-State: AIVw113TR2s1tQK1rLEeBmbdwkvo/Q7MbK2el5h4DIKEewYyb3tL5lcz
	nuUHQ1/jZxILhmnVRpPbzTgPBpyYkw==
X-Received: by 10.202.193.85 with SMTP id r82mr1418268oif.200.1500462421030;
	Wed, 19 Jul 2017 04:07:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.182.4 with HTTP; Wed, 19 Jul 2017 04:07:00 -0700 (PDT)
In-Reply-To: <20170718161438.31649-6-anibal.limon@linux.intel.com>
References: <20170718161438.31649-1-anibal.limon@linux.intel.com>
	<20170718161438.31649-6-anibal.limon@linux.intel.com>
From: Victor Rodriguez <vm.rod25@gmail.com>
Date: Wed, 19 Jul 2017 06:07:00 -0500
Message-ID: <CAK5mteyG3Y=UGOUriSuQyXjNLx1Rv_6NUan7SAfnYehtHubQ+g@mail.gmail.com>
To: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, mikko.ylinen@intel.com
Subject: Re: [yocto-autobuilder][PATCHv3 5/5] buildset-config.yocto-qa: Add intel-corei7-64-daft buildset
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
X-List-Received-Date: Wed, 19 Jul 2017 11:07:04 -0000
Content-Type: multipart/alternative; boundary="001a113d29d69abcb50554a9a1a8"

--001a113d29d69abcb50554a9a1a8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 18, 2017 at 11:14 AM, An=C3=ADbal Lim=C3=B3n <anibal.limon@linu=
x.intel.com
> wrote:

> This buildset is for support running sanity tests over a DUT like
> Minnowboard for the moment only builds core-image-sato, there is a need
> to make it configurable.
>
> Also the listo of the available devices are fixed into the UI as
> parameters.
>
> [YOCTO #10604]
>
> Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linux.intel.com>
> ---
>  buildset-config.yocto-qa/intel-corei7-64-daft.conf | 59
> ++++++++++++++++++++++
>  1 file changed, 59 insertions(+)
>  create mode 100644 buildset-config.yocto-qa/intel-corei7-64-daft.conf
>
> diff --git a/buildset-config.yocto-qa/intel-corei7-64-daft.conf
> b/buildset-config.yocto-qa/intel-corei7-64-daft.conf
> new file mode 100644
> index 00000000000..cb3bcdade75
> --- /dev/null
> +++ b/buildset-config.yocto-qa/intel-corei7-64-daft.conf
> @@ -0,0 +1,59 @@
> +[intel-corei7-64-daft]
> +builders: 'example-worker'
> +repos: [{'poky':
> +            {'repourl':'git://git.yoctoproject.org/poky',
> +             'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp',
> 'yocto':'meta-yocto', 'poky':'meta-poky'},
> +             'branch':'master'}},
> +        {'meta-intel':
> +            {'repourl':'git://git.yoctoproject.org/meta-intel',
> +             'layerversion':{'intel':'meta-intel'},
> +             'branch':'master'}}]
> +props: [{'kmeta':{'prop_type':'StringParameter',
> +                       'size': 15,
> +                       'name': 'kmeta',
> +                       'default': '',
> +                       'label':'<hr><h3> branch for KMETA_${MACHINE}
> (default is blank):</h3>'}},
> +        {'srcrev_meta':{'prop_type':'StringParameter',
> +                       'size': 15,
> +                       'name': 'srcrev_meta',
> +                       'default': '${AUTOREV}',
> +                       'label':'<hr><h3> SRCREV for KMETA_${MACHINE}
> (default is ${AUTOREV}):<br></h3>'}},
> +        {'srcuri_meta':{'prop_type':'StringParameter',
> +                       'size': 50,
> +                       'name': 'srcuri_meta',
> +                       'default': '',
> +                       'label':'<hr><h3> SRC_URI_pn-linux-yocto KMETA
> append. (default is blank).<br> This should be constructed as *just* the
> git uri portion of the string. <br>(git://git.yoctoproject.
> org/linux-yocto-3.19.git</h3>'}},
> +        {'kbranch':{'prop_type':'StringParameter',
> +                       'size': 15,
> +                       'name': 'kbranch',
> +                       'default': '',
> +                       'label':'<hr><h3> branch for KBRANCH_${MACHINE}
> (default is blank):</h3>'}},
> +        {'srcrev_machine':{'prop_type':'StringParameter',
> +                       'size': 15,
> +                       'name': 'srcrev_machine',
> +                       'default': '${AUTOREV}',
> +                       'label':'<hr><h3> SRCREV for KBRANCH. (default is
> ${AUTOREV}):<br></h3>'}},
> +        {'srcuri_machine':{'prop_type':'StringParameter',
> +                       'size': 50,
> +                       'name': 'srcuri_machine',
> +                       'default': '',
> +                       'label':'<hr><h3> SRC_URI_pn-linux-yocto KBRANCH
> append. (default is blank).<br> This should be constructed as *just* the
> git uri portion of the string. <br>(git://git.yoctoproject.
> org/linux-yocto-3.19.git</h3>'}},
> +       {'dut':{'prop_type':'ChoiceStringParameter',
> +                  'choices': ['Minnowboard1'],
> +                  'name': 'dut',
> +                  'label':'<hr><h3>Selects DUT for flashing.<br></h3>'}}=
]
> +steps: [{'SetDest':{}},
> +        {'CheckOutLayers': {}},
> +        {'RunPreamble': {}},
> +        {'CheckBSPExists': {}},
> +        {'GetDistroVersion' : {'distro': 'poky'}},
> +        {'CreateAutoConf': {'machine': 'intel-corei7-64', 'SDKMACHINE' :
> 'x86_64',
> +                            'distro': 'poky'}},
> +        {'CreateBBLayersConf': {'buildprovider' : 'yocto',
> +                                'bsplayer': True, 'bspprovider': 'intel'=
,
> +                                'layerdirs': ['meta-intel',
> 'meta-intel/meta-tlk']}},
> +        {'AddKernelProps': {}},
> +        {'DaftGetDevices': {}},
> +        {'BuildImages': {'images': 'core-image-sato'}},
> +        {'DaftFlash':{}},
> +        {'RunSanityTests': {'images': 'core-image-sato'}},]
> --
> 2.11.0
>
> Is there any documentation for this , i like a lot the idea and i would
like to know how to test this



> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a113d29d69abcb50554a9a1a8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Tue, Jul 18, 2017 at 11:14 AM, An=C3=ADbal Lim=C3=B3n <span dir=3D"l=
tr">&lt;<a href=3D"mailto:anibal.limon@linux.intel.com" target=3D"_blank">a=
nibal.limon@linux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">This buildset is for support running sanity tes=
ts over a DUT like<br>
Minnowboard for the moment only builds core-image-sato, there is a need<br>
to make it configurable.<br>
<br>
Also the listo of the available devices are fixed into the UI as<br>
parameters.<br>
<br>
[YOCTO #10604]<br>
<br>
Signed-off-by: An=C3=ADbal Lim=C3=B3n &lt;<a href=3D"mailto:anibal.limon@li=
nux.intel.com">anibal.limon@linux.intel.com</a>&gt;<br>
---<br>
=C2=A0buildset-config.yocto-qa/<wbr>intel-corei7-64-daft.conf | 59 ++++++++=
++++++++++++++<br>
=C2=A01 file changed, 59 insertions(+)<br>
=C2=A0create mode 100644 buildset-config.yocto-qa/<wbr>intel-corei7-64-daft=
.conf<br>
<br>
diff --git a/buildset-config.yocto-qa/<wbr>intel-corei7-64-daft.conf b/buil=
dset-config.yocto-qa/<wbr>intel-corei7-64-daft.conf<br>
new file mode 100644<br>
index 00000000000..cb3bcdade75<br>
--- /dev/null<br>
+++ b/buildset-config.yocto-qa/<wbr>intel-corei7-64-daft.conf<br>
@@ -0,0 +1,59 @@<br>
+[intel-corei7-64-daft]<br>
+builders: &#39;example-worker&#39;<br>
+repos: [{&#39;poky&#39;:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;repourl&#39;:&#39;git://<a=
 href=3D"http://git.yoctoproject.org/poky" rel=3D"noreferrer" target=3D"_bl=
ank">git.<wbr>yoctoproject.org/poky</a>&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;layerversion&#39;:{&#=
39;core&#39;:&#39;meta&#39;, &#39;yoctobsp&#39;:&#39;meta-yocto-bsp&#39;, &=
#39;yocto&#39;:&#39;meta-yocto&#39;, &#39;poky&#39;:&#39;meta-poky&#39;},<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;branch&#39;:&#39;mast=
er&#39;}},<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;meta-intel&#39;:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;repourl&#39;:&#39;git://<a=
 href=3D"http://git.yoctoproject.org/meta-intel" rel=3D"noreferrer" target=
=3D"_blank">git.<wbr>yoctoproject.org/meta-intel</a>&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;layerversion&#39;:{&#=
39;intel&#39;:&#39;meta-<wbr>intel&#39;},<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;branch&#39;:&#39;mast=
er&#39;}}]<br>
+props: [{&#39;kmeta&#39;:{&#39;prop_type&#39;:&#39;<wbr>StringParameter&#3=
9;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&#39;size&#39;: 15,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&#39;name&#39;: &#39;kmeta&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&#39;default&#39;: &#39;&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&#39;label&#39;:&#39;&lt;hr&gt;&lt;h3&gt; branch for KMETA_${MACH=
INE} (default is blank):&lt;/h3&gt;&#39;}},<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;srcrev_meta&#39;:{&#39;prop_type&#39;:&#=
39;<wbr>StringParameter&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&#39;size&#39;: 15,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&#39;name&#39;: &#39;srcrev_meta&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&#39;default&#39;: &#39;${AUTOREV}&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&#39;label&#39;:&#39;&lt;hr&gt;&lt;h3&gt; SRCREV for KMETA_${MACH=
INE} (default is ${AUTOREV}):&lt;br&gt;&lt;/h3&gt;&#39;}},<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;srcuri_meta&#39;:{&#39;prop_type&#39;:&#=
39;<wbr>StringParameter&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&#39;size&#39;: 50,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&#39;name&#39;: &#39;srcuri_meta&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&#39;default&#39;: &#39;&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&#39;label&#39;:&#39;&lt;hr&gt;&lt;h3&gt; SRC_URI_pn-linux-yocto =
KMETA append. (default is blank).&lt;br&gt; This should be constructed as *=
just* the git uri portion of the string. &lt;br&gt;(git://<a href=3D"http:/=
/git.yoctoproject.org/linux-yocto-3.19.git" rel=3D"noreferrer" target=3D"_b=
lank">git.yoctoproject.<wbr>org/linux-yocto-3.19.git</a>&lt;/h3&gt;&#39;<wb=
r>}},<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;kbranch&#39;:{&#39;prop_type&#39;:&#39;<=
wbr>StringParameter&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&#39;size&#39;: 15,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&#39;name&#39;: &#39;kbranch&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&#39;default&#39;: &#39;&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&#39;label&#39;:&#39;&lt;hr&gt;&lt;h3&gt; branch for KBRANCH_${MA=
CHINE} (default is blank):&lt;/h3&gt;&#39;}},<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;srcrev_machine&#39;:{&#39;prop_type&#39;=
<wbr>:&#39;StringParameter&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&#39;size&#39;: 15,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&#39;name&#39;: &#39;srcrev_machine&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&#39;default&#39;: &#39;${AUTOREV}&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&#39;label&#39;:&#39;&lt;hr&gt;&lt;h3&gt; SRCREV for KBRANCH. (de=
fault is ${AUTOREV}):&lt;br&gt;&lt;/h3&gt;&#39;}},<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;srcuri_machine&#39;:{&#39;prop_type&#39;=
<wbr>:&#39;StringParameter&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&#39;size&#39;: 50,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&#39;name&#39;: &#39;srcuri_machine&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&#39;default&#39;: &#39;&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&#39;label&#39;:&#39;&lt;hr&gt;&lt;h3&gt; SRC_URI_pn-linux-yocto =
KBRANCH append. (default is blank).&lt;br&gt; This should be constructed as=
 *just* the git uri portion of the string. &lt;br&gt;(git://<a href=3D"http=
://git.yoctoproject.org/linux-yocto-3.19.git" rel=3D"noreferrer" target=3D"=
_blank">git.yoctoproject.<wbr>org/linux-yocto-3.19.git</a>&lt;/h3&gt;&#39;<=
wbr>}},<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0{&#39;dut&#39;:{&#39;prop_type&#39;:&#39;<wbr>C=
hoiceStringParameter&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;choice=
s&#39;: [&#39;Minnowboard1&#39;],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;name&#=
39;: &#39;dut&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;label&=
#39;:&#39;&lt;hr&gt;&lt;h3&gt;Selects DUT for flashing.&lt;br&gt;&lt;/h3&gt=
;&#39;}}]<br>
+steps: [{&#39;SetDest&#39;:{}},<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;CheckOutLayers&#39;: {}},<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;RunPreamble&#39;: {}},<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;CheckBSPExists&#39;: {}},<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;GetDistroVersion&#39; : {&#39;distro&#39=
;: &#39;poky&#39;}},<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;CreateAutoConf&#39;: {&#39;machine&#39;:=
 &#39;intel-corei7-64&#39;, &#39;SDKMACHINE&#39; : &#39;x86_64&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 &#39;distro&#39;: &#39;poky&#39;}},<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;CreateBBLayersConf&#39;: {&#39;buildprov=
ider&#39; : &#39;yocto&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;bsplayer&#39;: True, &#39;bsppr=
ovider&#39;: &#39;intel&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;layerdirs&#39;: [&#39;meta-inte=
l&#39;, &#39;meta-intel/meta-tlk&#39;]}},<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;AddKernelProps&#39;: {}},<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;DaftGetDevices&#39;: {}},<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;BuildImages&#39;: {&#39;images&#39;: &#3=
9;core-image-sato&#39;}},<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;DaftFlash&#39;:{}},<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;RunSanityTests&#39;: {&#39;images&#39;: =
&#39;core-image-sato&#39;}},]<br>
<span class=3D"gmail-HOEnZb"><font color=3D"#888888">--<br>
2.11.0<br>
<br></font></span></blockquote><div>Is there any documentation for this , i=
 like a lot the idea and i would like to know how to test this =C2=A0</div>=
<div><br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><span class=3D"gmail-HOEnZb"><font color=3D"#888888">
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div></div>

--001a113d29d69abcb50554a9a1a8--
