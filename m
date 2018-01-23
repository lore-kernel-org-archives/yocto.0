Return-Path: <Aaron_Wright@selinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEE19E00E22; Mon, 22 Jan 2018 16:35:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.117.214.143 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from volare.selinc.com (volare.selinc.com [74.117.214.143])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77D20E006D2
	for <yocto@yoctoproject.org>; Mon, 22 Jan 2018 16:35:53 -0800 (PST)
Received: from pps.filterd (volare.selinc.com [127.0.0.1])
	by volare.selinc.com (8.16.0.22/8.16.0.22) with SMTP id w0N0RDP8013450
	for <yocto@yoctoproject.org>; Mon, 22 Jan 2018 16:35:52 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=selinc.com;
	h=in-reply-to :
	references : to : mime-version : subject : message-id : from : date :
	content-type; s=SELinc2017;
	bh=t3l6e93jzOAnkTg82ZVLSUDKoRKlOmcgCTi/F/LU7+w=;
	b=f4hAoIkCyrsB9Pr8bF6njYtbBKgq1i5WFXanr0kdWHWz0Wpv9Fd3hj8rA4Fi5is+l1Ub
	FFn7N2aY/DmGcMqjcyuYtb/4j8TR2MhttOVrzOkeDnKJBwszQ8bU8e+v1dARwH44TByo
	iU8MFwP24mHlfrZeU5QG0bRjDTN+/BiSHSjq/IezsQG1vgupR4IUaeKXasbpDJUk8T5h
	FG/1wnD2tg0oIToISecKMc05d05dWJ5dEiLUGWhPMtW3gdtP6GA2HpUUA42Uuj/yfBBd
	Iw+MDhhz0sTKPzqkcK494OfsnnwzMVQAr8TDrhT5l8m9RTHkEnPwCsa762HV9C68+fvr
	UQ== 
Received: from edison.ad.selinc.com (edison.ad.selinc.com [10.100.0.15])
	by volare.selinc.com with ESMTP id 2fm26r2rv8-1
	for <yocto@yoctoproject.org>; Mon, 22 Jan 2018 16:35:52 -0800
In-Reply-To: <CAJTo0LaiDm7poqH1ktntmu2xsOf9T831LUEcUVid8fj91i+v4w@mail.gmail.com>
References: <OF8E876F7E.8921135E-ON8825821D.00614B7D-8825821D.00621688@selinc.com>
	<CAJTo0LaiDm7poqH1ktntmu2xsOf9T831LUEcUVid8fj91i+v4w@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
MIME-Version: 1.0
X-KeepSent: 8482DB83:158B5EC1-8825821E:00028EC1;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0.1FP6 April 21, 2016
Message-ID: <OF8482DB83.158B5EC1-ON8825821E.00028EC1-8825821E.000348E9@selinc.com>
From: Aaron_Wright@selinc.com
Date: Mon, 22 Jan 2018 16:35:52 -0800
X-MIMETrack: Serialize by Router on Edison/SEL(Release 9.0.1FP9 HF139|October
	06, 2017) at 01/22/2018 04:35:52 PM,
	Serialize complete at 01/22/2018 04:35:52 PM
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=8782
	signatures=668655
Subject: Re: eSDK and Multilib
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
X-List-Received-Date: Tue, 23 Jan 2018 00:35:53 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 000348E98825821E_="

--=_alternative 000348E98825821E_=
Content-Type: text/plain; charset="US-ASCII"

> Don't install both into the SDK? 

Interesting, I assumed the populate_sdk_ext was building both lib32 and 
non-lib32 versions of the recipes on its own.

I'll have to double check my image definition for recipes that are having 
both variants pulled in.

Thanks for the idea.

> If you must, oe_multlib_header might help.
> 
> Ross
> 
>>  I'm running pyro, and I'm struggling to create an eSDK for multilib
>> custom image. I keep running into FileExistsError errors during the 
>> do_sdk_depends task. 
>> 
>> It seems as though the lib32 and non-lib32 versions of a recipe are 
>> both creating a -dev package that tries to install the same headers. 
>> 
>> Am I missing an easy solution to this?

--=_alternative 000348E98825821E_=
Content-Type: text/html; charset="US-ASCII"

<tt><font size=2>&gt; Don't install both into the SDK?&nbsp;</font></tt>
<br>
<br><font size=2 face="sans-serif">Interesting, I assumed the populate_sdk_ext
was building both lib32 and non-lib32 versions of the recipes on its own.</font>
<br>
<br><font size=2 face="sans-serif">I'll have to double check my image definition
for recipes that are having both variants pulled in.</font>
<br>
<br><font size=2 face="sans-serif">Thanks for the idea.</font>
<br>
<br><tt><font size=2>&gt; If you must, oe_multlib_header might help.</font></tt>
<br><tt><font size=2>&gt; <br>
&gt; Ross</font></tt>
<br><tt><font size=2>&gt; </font></tt>
<br><tt><font size=2>&gt;&gt; &nbsp;I'm running pyro, and I'm struggling
to create an eSDK for multilib<br>
&gt;&gt; custom image. I keep running into FileExistsError errors during
the <br>
&gt;&gt; do_sdk_depends task. <br>
&gt;&gt; <br>
&gt;&gt; It seems as though the lib32 and non-lib32 versions of a recipe
are <br>
&gt;&gt; both creating a -dev package that tries to install the same headers.
<br>
&gt;&gt; <br>
&gt;&gt; Am I missing an easy solution to this?<br>
</font></tt>

--=_alternative 000348E98825821E_=--
