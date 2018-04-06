Return-Path: <rksyeung@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34EFEE00B8A; Fri,  6 Apr 2018 15:46:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rksyeung[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.10.51 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 123862 seconds by postgrey-1.32 at yocto-www;
	Fri, 06 Apr 2018 15:46:32 PDT
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
	(mail-oln040092010051.outbound.protection.outlook.com [40.92.10.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 335D9E0073D
	for <yocto@yoctoproject.org>; Fri,  6 Apr 2018 15:46:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=fiMk3Hm+XahrrhVcB6jbJ8Uore4HONLowOK9ZccJviY=;
	b=Lv4BjWYk9mcqLMFibeCfjgnNwMY4OTDYoRB4CUY4dkw0r7e+nTwcRGiSLNmTuwpnWkNacvbFfT9uwt4JlXbjUWH4vgKR5uZoCN0AnYHMCzBemxsBiXBflMAMzPRMAwLKl2Dl9vueZ+pPokPOMAqRxhNpTvtv1CVEtWy1J7RnFLvtSl02/JgY+ORNEdL/V74ykp6cR+HklZVnZ9R2H2Mg/0lXVwOUH3aWiBSrl703NVna2lZ7hH8JQlcywuPBejP+J3OPILacc+fki4JNUv2yZFofqkTQCAbYeMICI0+GkiQEKk0DYnEuLwzJuL5IK2IQ9tGreAmvqogibHOy+Aambg==
Received: from BN3NAM04FT039.eop-NAM04.prod.protection.outlook.com
	(10.152.92.54) by BN3NAM04HT204.eop-NAM04.prod.protection.outlook.com
	(10.152.93.115) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.653.8;
	Fri, 6 Apr 2018 22:31:49 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com (10.152.92.54) by
	BN3NAM04FT039.mail.protection.outlook.com (10.152.93.3) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.653.8 via Frontend Transport; Fri, 6 Apr 2018 22:31:48 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::74e9:81a5:f67b:ae41]) by
	MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::74e9:81a5:f67b:ae41%17]) with mapi id 15.20.0653.014;
	Fri, 6 Apr 2018 22:31:49 +0000
From: Raymond Yeung <rksyeung@hotmail.com>
To: Anuj Mittal <anuj.mittal@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Adding debug output in recipe
Thread-Index: AQHTzLAit2+6n2Xi7EWx49+fo7yXrqPzLKaAgAAQCLmAAA3ggIABCUnF
Date: Fri, 6 Apr 2018 22:31:48 +0000
Message-ID: <DM5PR19MB11773265DEE80AD2CD8F0265C5BA0@DM5PR19MB1177.namprd19.prod.outlook.com>
References: <MWHPR19MB1183F00410877C3D80A2A59AC5BB0@MWHPR19MB1183.namprd19.prod.outlook.com>
	<5e7c67e4-3f79-aece-0d1b-a1494acda442@intel.com>
	<MWHPR19MB118326D76F8C45037C1BA6E6C5BA0@MWHPR19MB1183.namprd19.prod.outlook.com>,
	<34bdb916-5d2b-a478-4b83-3a47e39db01d@intel.com>
In-Reply-To: <34bdb916-5d2b-a478-4b83-3a47e39db01d@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:58421D35720AA8A5C3AAB6073AAAEFB882C3D541365F9712EF872B4CAF294711;
	UpperCasedChecksum:57F90BD0D7D047CC8E2C2A6334B3451E35FBD20C6EA9EC6C29560DDD12D5CC17;
	SizeAsReceived:7269; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [e0aVxkHfBfsTmcptcCY42M25s1GtVvCO]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BN3NAM04HT204;
	7:0rU6QDwhDow9CpaGoybTz+BS8aFvG+lBIu/zJQVuRpZq5upUjmf9YOhybb66R7t4nq3kYI+1viCeTCAcY9PSaFXdkyVEbXrsGnzvBcHzJqlwMupus1VM4LWG0DGGggiNVxO/Dsl7KpFIPGFGgdmaRQO7K3dz73xcrYWC6y1LGwhuF0mplZ51XB6arGmlcZHtea6hILQIWMJoIghBSWB8A1Yta02fUdtv42I5DqDFhp8ZYA+vzJgzbF6C6sAado/j
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101448)(1601125374)(1701031045);
	SRVR:BN3NAM04HT204; 
x-ms-traffictypediagnostic: BN3NAM04HT204:
x-ms-office365-filtering-correlation-id: 6b47fa9e-ebb3-416b-c79d-08d59c0e2ff5
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:BN3NAM04HT204; BCL:0; PCL:0; RULEID:; SRVR:BN3NAM04HT204; 
x-forefront-prvs: 0634F37BFF
x-forefront-antispam-report: SFV:NSPM; SFS:(7070007)(98901004); DIR:OUT;
	SFP:1901; SCL:1; SRVR:BN3NAM04HT204;
	H:MWHPR19MB1183.namprd19.prod.outlook.com; FPR:; SPF:None; LANG:;
x-microsoft-antispam-message-info: yps7ILmX95ESkd7FlfBhiYO6rrdYihGsM48Rmia//F8zGFaH/ZiRQqlWrHR5urVcKeRApiPmFhdzDUTCBPuhdY3oMkT7rTx//xm62+RgX9d+FMnpoIZz1spgyGWxP7B3nNdbUY63RABwU87ZiRZW9xe1OBfn6lR6pb4eYbCSJt/+VlkBmb7wpTW+4C00jFlI
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b47fa9e-ebb3-416b-c79d-08d59c0e2ff5
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Apr 2018 22:31:49.0279 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3NAM04HT204
Subject: Re: Adding debug output in recipe
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
X-List-Received-Date: Fri, 06 Apr 2018 22:46:35 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM5PR19MB11773265DEE80AD2CD8F0265C5BA0DM5PR19MB1177namp_"

--_000_DM5PR19MB11773265DEE80AD2CD8F0265C5BA0DM5PR19MB1177namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

You're right on.  KERNEL_CC was used.  The 3rd party code actually has 3 co=
mponents -


  1.  a kernel module
  2.  a shared library
  3.  2 demo binaries


Their top-level makefile builds everything.  From Yocto's perspective, it i=
nterfaces with this code as though the whole thing is a kernel module.  The=
re may be adversed implication to the shared library if I were to use the K=
ERNEL_CC variable.  So, I'm thinking of modifying the 3rd party makefile to=
 support separate builds.


What documentation/section I should look into for patching the makefile (mi=
nimize changes to original vendor files)?


Thanks,

Raymond


________________________________
From: Anuj Mittal <anuj.mittal@intel.com>
Sent: Thursday, April 5, 2018 11:39 PM
To: Raymond Yeung; yocto@yoctoproject.org
Subject: Re: [yocto] Adding debug output in recipe

On 04/06/2018 02:05 PM, Raymond Yeung wrote:
> Hi Anuj,
>
>
> "bitbake -e" is very useful for debugging out-of-tree build issue.
>  However, looks like I have another issue.  From "devtool build" output,
> I could see variables passed into makefile.  Let's focus on "CC" for now:
>
>
> CC=3Dx86_64-poky-linux-gcc  -fuse-ld=3Dbfd

I think that is the value of KERNEL_CC if you're inheriting module.bbclass.

>
>
> If we compare this to "bitbake -e" dump:
>
>
> export CC=3D"x86_64-poky-linux-gcc  -m64 -march=3Dcorei7 -mtune=3Dcorei7
> -mfpmath=3Dsse -msse4.2
> --sysroot=3D/a/ryeung/dev/yocto-git/yocto_build/build/tmp/sysroots/intel-=
corei7-64"
>
>
> You can see somehow the variable is modified.  Let's focus on --sysroot
> portion.  Without it, there seems to be no way for me to control
> LIBRARY_PATH's value.  The result is that the linker couldn't find
> crti.o and a few other files.  By manually adding back --sysroot
> portion, I could now get past this failure, onto the next.
>
>
> I suppose, as a possible final solution, I could do:
>
>
> $(CC) --sysroot=3D$(KERNEL_SRC) ...

This looks like a problem with your source Makefile. Please check the
variable that points to kernel sources in your Makefile.

Use EXTRA_OEMAKE +=3D "<varname>=3D'${STAGING_KERNEL_DIR}'" if the variable
name used in your Makefile is different from KERNEL_PATH or KERNEL_SRC.

You can also check run.do_compile file to see the exact compile steps.

Please see:

https://www.yoctoproject.org/docs/latest/kernel-dev/kernel-dev.html#incorpo=
rating-out-of-tree-modules
Yocto Project Linux Kernel Development Manual<https://www.yoctoproject.org/=
docs/latest/kernel-dev/kernel-dev.html#incorporating-out-of-tree-modules>
www.yoctoproject.org
Kernel modification involves changing the Yocto Project kernel, which could=
 involve changing configuration options as well as adding new kernel recipe=
s.




>
>
> I'm really looking for simpler, more intuitive solution.  What about the
> missing "-m64 -march=3Dcorei7 -mtune=3Dcorei7 -mfpmath=3Dsse -msse4.2" in=
 the
> export?
>
>
> Raymond
>
>
>
>
> ------------------------------------------------------------------------
> *From:* Anuj Mittal <anuj.mittal@intel.com>
> *Sent:* Thursday, April 5, 2018 9:52 PM
> *To:* Raymond Yeung; yocto@yoctoproject.org
> *Subject:* Re: [yocto] Adding debug output in recipe
>
> On 04/05/2018 03:33 PM, Raymond Yeung wrote:
>> Is there a way to add simple debug output (ideally don't need to control
>> debug level) to echo out values of variables?  I tried the bb.xxx
>> variants, but couldn't get them to work.
>>
>
> To find out what a variable is being set to, you can try:
>
> bitbake -e <recipename>
>
> Please see:
>
> https://wiki.yoctoproject.org/wiki/Technical_FAQ#I_set_a_variable_but_it_=
doesn.27t_seem_to_be_having_an_effect.2C_how_do_I_fix_this.3F
>
> Is that what you were looking for?


--_000_DM5PR19MB11773265DEE80AD2CD8F0265C5BA0DM5PR19MB1177namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">You're right on. &nbsp;KERNEL_CC =
was used. &nbsp;The 3rd party code actually has 3 components -</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"></p>
<ol style=3D"margin-bottom: 0px; margin-top: 0px;">
<li><span style=3D"font-size: 12pt;"></span><span style=3D"font-size: 12pt;=
"></span>a kernel module</li><li>a shared library</li><li>2 demo binaries</=
li></ol>
<br>
<p></p>
<p style=3D"margin-top:0;margin-bottom:0">Their top-level makefile builds e=
verything. &nbsp;From Yocto's perspective, it interfaces with this code as =
though the whole thing is a kernel module. &nbsp;There may be adversed impl=
ication to the shared library if I were to use
 the KERNEL_CC variable. &nbsp;So, I'm thinking of modifying the 3rd party =
makefile to support separate builds.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">What documentation/section I shou=
ld look into for patching the makefile (minimize changes to original vendor=
 files)?</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Thanks,</p>
<p style=3D"margin-top:0;margin-bottom:0">Raymond</p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Anuj Mittal &lt;anuj.=
mittal@intel.com&gt;<br>
<b>Sent:</b> Thursday, April 5, 2018 11:39 PM<br>
<b>To:</b> Raymond Yeung; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Adding debug output in recipe</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">On 04/06/2018 02:05 PM, Raymond Yeung wrote:<br>
&gt; Hi Anuj,<br>
&gt; <br>
&gt; <br>
&gt; &quot;bitbake -e&quot; is very useful for debugging out-of-tree build =
issue.<br>
&gt; &nbsp;However, looks like I have another issue. &nbsp;From &quot;devto=
ol build&quot; output,<br>
&gt; I could see variables passed into&nbsp;makefile. &nbsp;Let's focus on =
&quot;CC&quot; for now:<br>
&gt; <br>
&gt; <br>
&gt; CC=3Dx86_64-poky-linux-gcc &nbsp;-fuse-ld=3Dbfd<br>
<br>
I think that is the value of KERNEL_CC if you're inheriting module.bbclass.=
<br>
<br>
&gt; <br>
&gt; <br>
&gt; If we compare this to &quot;bitbake -e&quot; dump:<br>
&gt; <br>
&gt; <br>
&gt; export CC=3D&quot;x86_64-poky-linux-gcc &nbsp;-m64 -march=3Dcorei7 -mt=
une=3Dcorei7<br>
&gt; -mfpmath=3Dsse -msse4.2<br>
&gt; --sysroot=3D/a/ryeung/dev/yocto-git/yocto_build/build/tmp/sysroots/int=
el-corei7-64&quot;<br>
&gt; <br>
&gt; <br>
&gt; You can see somehow the variable is modified. &nbsp;Let's focus on --s=
ysroot<br>
&gt; portion. &nbsp;Without it, there seems to be no way for me to control<=
br>
&gt; LIBRARY_PATH's value. &nbsp;The result is that the linker couldn't fin=
d<br>
&gt; crti.o and a few other files. &nbsp;By manually adding back --sysroot<=
br>
&gt; portion, I could now get past this failure, onto the next.<br>
&gt; <br>
&gt; <br>
&gt; I suppose, as a possible final solution, I could do:<br>
&gt; <br>
&gt; <br>
&gt; $(CC) --sysroot=3D$(KERNEL_SRC) ...<br>
<br>
This looks like a problem with your source Makefile. Please check the<br>
variable that points to kernel sources in your Makefile.<br>
<br>
Use EXTRA_OEMAKE &#43;=3D &quot;&lt;varname&gt;=3D'${STAGING_KERNEL_DIR}'&q=
uot; if the variable<br>
name used in your Makefile is different from KERNEL_PATH or KERNEL_SRC.<br>
<br>
You can also check run.do_compile file to see the exact compile steps.<br>
<br>
Please see:<br>
<br>
<a href=3D"https://www.yoctoproject.org/docs/latest/kernel-dev/kernel-dev.h=
tml#incorporating-out-of-tree-modules" id=3D"LPlnk856268" previewremoved=3D=
"true">https://www.yoctoproject.org/docs/latest/kernel-dev/kernel-dev.html#=
incorporating-out-of-tree-modules</a>
<div id=3D"LPBorder_GT_15230537207900.47532767920173336" style=3D"margin-bo=
ttom: 20px; overflow: auto; width: 100%; text-indent: 0px;">
<table id=3D"LPContainer_15230537207870.6067276196852213" role=3D"presentat=
ion" cellspacing=3D"0" style=3D"width: 90%; background-color: rgb(255, 255,=
 255); position: relative; overflow: auto; padding-top: 20px; padding-botto=
m: 20px; margin-top: 20px; border-top-width: 1px; border-top-style: dotted;=
 border-top-color: rgb(200, 200, 200); border-bottom-width: 1px; border-bot=
tom-style: dotted; border-bottom-color: rgb(200, 200, 200);">
<tbody>
<tr valign=3D"top" style=3D"border-spacing: 0px;">
<td id=3D"TextCell_15230537207880.4540178403164894" colspan=3D"2" style=3D"=
vertical-align: top; position: relative; padding: 0px; display: table-cell;=
">
<div id=3D"LPRemovePreviewContainer_15230537207890.4310096310980922"><a id=
=3D"LPlnk453941" class=3D"ms-Icon--x ms-icon-font-size-14" style=3D"font-fa=
mily: wf_segoe-ui_normal, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahom=
a, Arial, sans-serif; font-weight: normal; position: relative; cursor: poin=
ter; padding: 8px; float: right; color: rgb(102, 102, 102); background-colo=
r: rgb(239, 246, 252); -webkit-user-select: none; margin-left: 10px;" previ=
ewremoved=3D"true"></a></div>
<div id=3D"LPTitle_15230537207890.9649983874124788" style=3D"top: 0px; colo=
r: rgb(0, 120, 215); font-weight: normal; font-size: 21px; font-family: wf_=
segoe-ui_light, &quot;Segoe UI Light&quot;, &quot;Segoe WP Light&quot;, &qu=
ot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif; line-he=
ight: 21px;">
<a id=3D"LPUrlAnchor_15230537207890.4385613783150627" href=3D"https://www.y=
octoproject.org/docs/latest/kernel-dev/kernel-dev.html#incorporating-out-of=
-tree-modules" target=3D"_blank" style=3D"text-decoration: none;">Yocto Pro=
ject Linux Kernel Development Manual</a></div>
<div id=3D"LPMetadata_15230537207890.7809769039162715" style=3D"margin: 10p=
x 0px 16px; color: rgb(102, 102, 102); font-weight: normal; font-family: wf=
_segoe-ui_normal, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial=
, sans-serif; font-size: 14px; line-height: 14px;">
www.yoctoproject.org</div>
<div id=3D"LPDescription_15230537207900.7593695061999772" style=3D"display:=
 block; color: rgb(102, 102, 102); font-weight: normal; font-family: wf_seg=
oe-ui_normal, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sa=
ns-serif; font-size: 14px; line-height: 20px; max-height: 100px; overflow: =
hidden;">
Kernel modification involves changing the Yocto Project kernel, which could=
 involve changing configuration options as well as adding new kernel recipe=
s.</div>
</td>
</tr>
</tbody>
</table>
</div>
<br>
<br>
<br>
&gt; <br>
&gt; <br>
&gt; I'm really looking for simpler, more intuitive solution. &nbsp;What ab=
out the<br>
&gt; missing &quot;-m64 -march=3Dcorei7 -mtune=3Dcorei7 -mfpmath=3Dsse -mss=
e4.2&quot; in the<br>
&gt; export?<br>
&gt; <br>
&gt; <br>
&gt; Raymond<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; ----------------------------------------------------------------------=
--<br>
&gt; *From:* Anuj Mittal &lt;anuj.mittal@intel.com&gt;<br>
&gt; *Sent:* Thursday, April 5, 2018 9:52 PM<br>
&gt; *To:* Raymond Yeung; yocto@yoctoproject.org<br>
&gt; *Subject:* Re: [yocto] Adding debug output in recipe<br>
&gt; &nbsp;<br>
&gt; On 04/05/2018 03:33 PM, Raymond Yeung wrote:<br>
&gt;&gt; Is there a way to add simple debug output (ideally don't need to c=
ontrol<br>
&gt;&gt; debug level) to echo out values of variables? &nbsp;I tried the bb=
.xxx<br>
&gt;&gt; variants, but couldn't get them to work.<br>
&gt;&gt; <br>
&gt; <br>
&gt; To find out what a variable is being set to, you can try:<br>
&gt; <br>
&gt; bitbake -e &lt;recipename&gt;<br>
&gt; <br>
&gt; Please see:<br>
&gt; <br>
&gt; <a href=3D"https://wiki.yoctoproject.org/wiki/Technical_FAQ#I_set_a_va=
riable_but_it_doesn.27t_seem_to_be_having_an_effect.2C_how_do_I_fix_this.3F=
" id=3D"LPlnk149872" previewremoved=3D"true">
https://wiki.yoctoproject.org/wiki/Technical_FAQ#I_set_a_variable_but_it_do=
esn.27t_seem_to_be_having_an_effect.2C_how_do_I_fix_this.3F</a><br>
&gt; <br>
&gt; Is that what you were looking for?<br>
<br>
</div>
</span></font></div>
</div>
</div>
</body>
</html>

--_000_DM5PR19MB11773265DEE80AD2CD8F0265C5BA0DM5PR19MB1177namp_--
