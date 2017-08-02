Return-Path: <tmatsuzawa@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49571E00C1B; Wed,  2 Aug 2017 08:35:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.37.42 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
	(mail-cys01nam02on0042.outbound.protection.outlook.com
	[104.47.37.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53A24E00B28
	for <yocto@yoctoproject.org>; Wed,  2 Aug 2017 08:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=L8JgDF9GStS6iF3nrvDWBF/sNdHv3Dt4qtcXYK/sPCs=;
	b=yseqMmK7ENUBP5uX1FQMI4qE/2SKXedsGO7YIr1G7P8xGdObZbZ5Ivnono2ugiEjA3bczUlts6bZN74AFc+jO4cyMtdwcc6ZMSUCqgR8KBNj3kI9wIkWRMnGYhW8zl1Ug7c9w9ghYxPuXAUCbltVb3japireKcmDNBUVGcSbCus=
Received: from MWHPR01MB3293.prod.exchangelabs.com (10.172.170.150) by
	MWHPR01MB3293.prod.exchangelabs.com (10.172.170.150) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.1.1304.22; Wed, 2 Aug 2017 15:35:52 +0000
Received: from MWHPR01MB3293.prod.exchangelabs.com ([10.172.170.150]) by
	MWHPR01MB3293.prod.exchangelabs.com ([10.172.170.150]) with mapi id
	15.01.1304.023; Wed, 2 Aug 2017 15:35:52 +0000
From: Takashi Matsuzawa <tmatsuzawa@xevo.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] local file update vs rebuild
Thread-Index: AQHTCfGbP/Qv+xMmlkyawVYpcAWfoKJuRYGAgAKjUDWAAA1lAIAAP5xl
Date: Wed, 2 Aug 2017 15:35:52 +0000
Message-ID: <MWHPR01MB3293E071FD1AD3C20826E03AB6B00@MWHPR01MB3293.prod.exchangelabs.com>
References: <MWHPR01MB3293BF2A96B39AEE98F18DE2B6B20@MWHPR01MB3293.prod.exchangelabs.com>
	<38c1a8ab-2ad8-f1e1-c56c-13ec8ace1dd0@gmail.com>
	<MWHPR01MB3293F9C5E19470A956237D8DB6B00@MWHPR01MB3293.prod.exchangelabs.com>,
	<CAJTo0LY9DvQ22ik+9kUOd64s=fbY26EA0J5Mip8BXbxM9XUNBw@mail.gmail.com>
In-Reply-To: <CAJTo0LY9DvQ22ik+9kUOd64s=fbY26EA0J5Mip8BXbxM9XUNBw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tmatsuzawa@xevo.com; 
x-originating-ip: [182.251.44.57]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MWHPR01MB3293;
	7:gneWwoyF9UL1zbzP93znLrcfKGmJtEeiY6gd2A1FQhXOAkinAfn/WfEm+Qc2q0ZsGD/vIf7r6ImJ+qsbhGA3inv7q7J3MdIc1UpKUKIxTCy3WyKHLuiPTe8WUHsNsoVvwrzLS1Ga+aGELcGo7Ns4X/5jbtakRA292SsYemopBk0CDcvk9/cyorYuKZgmeh0EutWBURDTM0jpok5fHImQ/cfxZ+RDIWn79O7VGIFDEGUFHjqaWDG12Kiqx4ldZcw57hQCPQ9E8HSyF+N51qiAnCmlzTi5bIHVpkLf0rWeFp2XK7w9/KXbiOYiHTFdlq5Yo8bGZmpik9l2WJVfb8/Cl5guO5AvY2UqcDAVkl4rBn1RZGKoPsE5G1HawggAXK1snSdGFsJj0dfGVTZbFPRS0BMtPTr6X4Vz8Ir4EsRgTECbf4YYr8ymnFDSrL4lM9oyEA9R4cntGPyi6bq1lgWdTOIBMh6+sPAwrBu0WxChtNRa+s8tQj3U/AvghJxAitinq3q1QEYNFXVbZOTzIiNADiMR3sEYcbKRuXEHRlnswzDpEemwFdo8OY9xdsZ7CBRbciD3NIXvmd+I5q4vXtKLSNoUVVPllwOqmBhAdf3oxuiMkro7NzPKR9ZdLBoiXSFD1aWoISMDdilbpkn5qHU5kiM+5o25Oh4lKhCCQGFsV7beROihFFoSfTm81Z0aS41zBlMaRfwzC0AvC96i/hUWC+d7FdgHpQsiPjEz7rOBlzoTepIPsIh2vukM2M+pspgFhTkudZKr8aLaKJ+59YlStP8IErXAjfXbwiT0Z9OU0Qw=
x-ms-office365-filtering-correlation-id: 8382685f-c773-4e99-ffa6-08d4d9bc28df
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(2017030254152)(300000503095)(300135400095)(2017052603031)(201703131423075)(201703031133081)(201702281549075)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);
	SRVR:MWHPR01MB3293; 
x-ms-traffictypediagnostic: MWHPR01MB3293:
x-exchange-antispam-report-test: UriScan:(228905959029699);
x-microsoft-antispam-prvs: <MWHPR01MB329318D397BB21D4F1F37F33B6B00@MWHPR01MB3293.prod.exchangelabs.com>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(8121501046)(5005006)(93006095)(93001095)(3002001)(10201501046)(100000703101)(100105400095)(6041248)(20161123562025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123558100)(20161123560025)(20161123555025)(20161123564025)(6072148)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:MWHPR01MB3293; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:MWHPR01MB3293; 
x-forefront-prvs: 0387D64A71
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(39450400003)(39400400002)(39410400002)(39830400002)(189002)(24454002)(377454003)(57704003)(199003)(3660700001)(77096006)(2906002)(53936002)(10710500007)(2900100001)(6506006)(53546010)(97736004)(189998001)(3846002)(6116002)(229853002)(102836003)(6246003)(3280700002)(7110500001)(33656002)(53386004)(110136004)(6306002)(2950100002)(38730400002)(106356001)(54896002)(81156014)(9686003)(68736007)(6916009)(81166006)(15650500001)(236005)(478600001)(99286003)(105586002)(8936002)(8676002)(966005)(14454004)(54906002)(55016002)(7696004)(50986999)(54356999)(76176999)(6436002)(2420400007)(101416001)(93886004)(7736002)(606006)(39060400002)(66066001)(25786009)(74316002)(86362001)(4326008)(345774005)(5660300001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR01MB3293;
	H:MWHPR01MB3293.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: xevo.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2017 15:35:52.7055 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR01MB3293
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: local file update vs rebuild
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
X-List-Received-Date: Wed, 02 Aug 2017 15:35:58 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR01MB3293E071FD1AD3C20826E03AB6B00MWHPR01MB3293prod_"

--_000_MWHPR01MB3293E071FD1AD3C20826E03AB6B00MWHPR01MB3293prod_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Helli, thank you for your confirmation.
________________________________
From: Burton, Ross <ross.burton@intel.com>
Sent: Wednesday, August 2, 2017 8:47:00 PM
To: Takashi Matsuzawa
Cc: Khem Raj; yocto@yoctoproject.org
Subject: Re: [yocto] local file update vs rebuild

If you modify a recipe then anything that depends on it will be rebuilt.  S=
o changing a file referenced in SRC_URI in a recipe will cause the image to=
 rebuild if you build the image.

Ross

On 2 August 2017 at 12:03, Takashi Matsuzawa <tmatsuzawa@xevo.com<mailto:tm=
atsuzawa@xevo.com>> wrote:

Hello.

Thank you for your comment.


I want to double check.


xxxx =3D image name

yyyy =3D recipe within xxxx


Then, I am not sure if doing below will rebuild yyyy from scratch.


$ bitbake xxxx -c cleansstate

$ bitbake xxxx


Especially, I am doing things like below within my yyyy.


SRC_URI +=3D "file://src/*;subdir=3Dlocal"


I want to be sure that, if I make modification to the local files (referred=
 to as file://... path within SRC_URI variable of xxxx recipe), the changes=
 are reflected to the final image.

(Not explicitly specifying -c cleansstate to xxxx).

________________________________
From: Khem Raj <raj.khem@gmail.com<mailto:raj.khem@gmail.com>>
Sent: Tuesday, August 1, 2017 3:42 AM
To: Takashi Matsuzawa; yocto@yoctoproject.org<mailto:yocto@yoctoproject.org=
>
Subject: Re: [yocto] local file update vs rebuild



On 7/31/17 4:39 AM, Takashi Matsuzawa wrote:
> Hello.
> I am uncertain about do_clean behavior with local files.
>
>
> Say, I have local files referred by my recipe, and I have made changes to=
 the files referred.
> (Note, there is no change in my xxxx.bb<http://xxxx.bb> file itself.)
>
>
>> SRC_URI +=3D "file://src/*;subdir=3Dlocal"
>
>
> What makes those changed files reflected to the build?
> Do I need do_cleanall?  do_cleansstate or maybe do_clean is enough?
>
>
> According to the document
>
>
>> do_clean
>> do_unpack task forward (i.e. do_unpack, do_configure, do_compile, do_ins=
tall, and do_package).
>> if no changes have been made and the recipe is rebuilt after cleaning, o=
utput files are simply restored from the sstate cache.
>
>
> I want to avoid doing do_cleanall often, and I would like to tell bitbake=
 that my recipe needs rebuild at the same time not rebuilding others.
> But at the same time I want to avoid building my single explicity.
> I just want to build the image name as target.

I think ccleansstate should be good.

>
>


--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto



--_000_MWHPR01MB3293E071FD1AD3C20826E03AB6B00MWHPR01MB3293prod_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
Helli, thank you for your confirmation.<br>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Burton, Ross &lt;ross=
.burton@intel.com&gt;<br>
<b>Sent:</b> Wednesday, August 2, 2017 8:47:00 PM<br>
<b>To:</b> Takashi Matsuzawa<br>
<b>Cc:</b> Khem Raj; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] local file update vs rebuild</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">If you modify a recipe then anything that depends on it wi=
ll be rebuilt.&nbsp; So changing a file referenced in SRC_URI in a recipe w=
ill cause the image to rebuild if you build the image.
<div><br>
</div>
<div>Ross</div>
</div>
<div class=3D"gmail_extra"><br>
<div class=3D"gmail_quote">On 2 August 2017 at 12:03, Takashi Matsuzawa <sp=
an dir=3D"ltr">
&lt;<a href=3D"mailto:tmatsuzawa@xevo.com" target=3D"_blank">tmatsuzawa@xev=
o.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<div dir=3D"ltr">
<div id=3D"m_1976617302887911710divtagdefaultwrapper" style=3D"font-size:12=
pt;color:#000000;font-family:Calibri,Helvetica,sans-serif" dir=3D"ltr">
<p>Hello.</p>
<p>Thank you for your comment.</p>
<p><br>
</p>
<p>I want to double check.</p>
<p><br>
</p>
<p>xxxx =3D image name</p>
<p>yyyy =3D recipe within xxxx</p>
<p><br>
</p>
<p>Then, I am not sure if doing below will rebuild yyyy from scratch.</p>
<p><br>
</p>
<p>$ bitbake xxxx -c cleansstate</p>
<p>$ bitbake xxxx</p>
<p><br>
</p>
<p>Especially, I am doing things like below within my yyyy.</p>
<p><br>
</p>
<p><span style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;=
Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Seg=
oe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols;font-size:13.3333=
px">SRC_URI &#43;=3D &quot;</span><a style=3D"font-family:Calibri,Helvetica=
,sans-serif,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&qu=
ot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,Em=
ojiSymbols;font-size:13.3333px">file://src/*;subdir=3Dlocal</a><span style=
=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Apple Color Em=
oji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&q=
uot;,&quot;Android Emoji&quot;,EmojiSymbols;font-size:13.3333px">&quot;</sp=
an><br style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Ap=
ple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe=
 UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols;font-size:13.3333px=
">
<br>
</p>
<p>I want to be sure that, if I make modification to the local files (refer=
red to as
<a class=3D"m_1976617302887911710OWAAutoLink">file://</a>... path within SR=
C_URI variable of xxxx recipe), the changes are reflected to the final imag=
e.</p>
<p>(Not explicitly specifying -c cleansstate to xxxx).</p>
<br>
<div style=3D"color:rgb(0,0,0)">
<div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_1976617302887911710x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"=
Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>From:</b=
> Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.=
khem@gmail.com</a>&gt;<br>
<b>Sent:</b> Tuesday, August 1, 2017 3:42 AM<br>
<b>To:</b> Takashi Matsuzawa; <a href=3D"mailto:yocto@yoctoproject.org" tar=
get=3D"_blank">
yocto@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] local file update vs rebuild</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt">
<div class=3D"m_1976617302887911710PlainText"><br>
<br>
On 7/31/17 4:39 AM, Takashi Matsuzawa wrote:<br>
&gt; Hello.<br>
&gt; I am uncertain about do_clean behavior with local files.<br>
&gt; <br>
&gt; <br>
&gt; Say, I have local files referred by my recipe, and I have made changes=
 to the files referred.<br>
&gt; (Note, there is no change in my <a href=3D"http://xxxx.bb" target=3D"_=
blank">xxxx.bb</a> file itself.)<br>
&gt; <br>
&gt; <br>
&gt;&gt; SRC_URI &#43;=3D &quot;<a>file://src/*;subdir=3Dlocal</a>&quot;<br=
>
&gt; <br>
&gt; <br>
&gt; What makes those changed files reflected to the build?<br>
&gt; Do I need do_cleanall? &nbsp;do_cleansstate or maybe do_clean is enoug=
h?<br>
&gt; <br>
&gt; <br>
&gt; According to the document<br>
&gt; <br>
&gt; <br>
&gt;&gt; do_clean<br>
&gt;&gt; do_unpack task forward (i.e. do_unpack, do_configure, do_compile, =
do_install, and do_package).<br>
&gt;&gt; if no changes have been made and the recipe is rebuilt after clean=
ing, output files are simply restored from the sstate cache.&nbsp;<br>
&gt; <br>
&gt; <br>
&gt; I want to avoid doing do_cleanall often, and I would like to tell bitb=
ake that my recipe needs rebuild at the same time not rebuilding others.<br=
>
&gt; But at the same time I want to avoid building my single explicity.<br>
&gt; I just want to build the image name as target.<br>
<br>
I think ccleansstate should be good.<br>
<br>
&gt; <br>
&gt; <br>
<br>
</div>
</span></font></div>
</div>
</div>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br>
</blockquote>
</div>
<br>
</div>
</div>
</body>
</html>

--_000_MWHPR01MB3293E071FD1AD3C20826E03AB6B00MWHPR01MB3293prod_--
