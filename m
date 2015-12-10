Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE7C0E00BE1; Thu, 10 Dec 2015 14:07:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mikehabibi[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03925E00718
	for <yocto@yoctoproject.org>; Thu, 10 Dec 2015 14:07:03 -0800 (PST)
Received: by iofh3 with SMTP id h3so108141465iof.3
	for <yocto@yoctoproject.org>; Thu, 10 Dec 2015 14:07:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Ocvc3qOp3eMHlo33OTtA6f8e4QlnG8xXKencGp4QJtg=;
	b=t9GLXsisPN1jo53Wq9X/dYUnFNCIN7/uWpj75fHoCUIEmtcCckH125gRZ8KUWs3bFt
	tIVrMMJ0EVaSaCaSqI5pu9oKlAb2kEw0wixgibzKYV6OO0WHmAkrM1SxdPZgIbcHuedq
	LvvNzOrM44c6v6zcJPtcDO9BGpI+OEj2dcmpaFM1GFppDEg7LZBDdjCe9i36fejSQHJJ
	FWkNORM4yirxe+VLZYLFGRPGwrLSgtM84CU3I8/EJwj8s2yOMlDIAt4fYwL1phpsbmMw
	rRV95Jb21WeBYnjSMpKgQJnFhyl1AGRZoP0atV+is7Wyp/XWdOWD2HxWtFDJt9FEj1bf
	evog==
MIME-Version: 1.0
X-Received: by 10.107.149.9 with SMTP id x9mr16139953iod.170.1449785223332;
	Thu, 10 Dec 2015 14:07:03 -0800 (PST)
Received: by 10.79.91.134 with HTTP; Thu, 10 Dec 2015 14:07:03 -0800 (PST)
In-Reply-To: <CAJTo0LYeq6+bW4Db5UsLMtRF1M6gijfeSiSyS2frvyHSXzjrRg@mail.gmail.com>
References: <CAOsp8o9_bzZg5nYsPrqiCNOm+SBphZpwmY1eGqav2g2ULYCCSw@mail.gmail.com>
	<CAJTo0LYeq6+bW4Db5UsLMtRF1M6gijfeSiSyS2frvyHSXzjrRg@mail.gmail.com>
Date: Thu, 10 Dec 2015 16:07:03 -0600
Message-ID: <CAOsp8o9=GXehbV42_yS1Mu9aBkHMMg_K92oQU9uREb3XP=BHdA@mail.gmail.com>
From: Michael Habibi <mikehabibi@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Best practice for building a large amount of source files
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
X-List-Received-Date: Thu, 10 Dec 2015 22:07:06 -0000
Content-Type: multipart/alternative; boundary=001a1140fa063cca780526926d8c

--001a1140fa063cca780526926d8c
Content-Type: text/plain; charset=UTF-8

Ross, I will likely try a different workflow if we enter production
environment with yocto. Right now I am just doing yocto integration testing
myself, and want to simplify things as much as possible for myself :)

On Thu, Dec 10, 2015 at 3:54 PM, Burton, Ross <ross.burton@intel.com> wrote:

>
> On 10 December 2015 at 21:16, Michael Habibi <mikehabibi@gmail.com> wrote:
>
>> What is the best option for adding all of these and compiling? As far as
>> I know, you have to do one of the following:
>>
>> 1) Use a fetch that fetches a tarball with all your source, or a repo
>> with all of your source
>> 2) Use a million-line long SRC_URI assignment to include every file that
>> your application uses.
>>
>> Is there a third (or fourth) option that I may have missed?
>>
>
> (1) is definitely my recommendation, separate the application development
> from the recipe to build the application.
>
> Ross
>

--001a1140fa063cca780526926d8c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ross, I will likely try a different workflow if we enter p=
roduction environment with yocto. Right now I am just doing yocto integrati=
on testing myself, and want to simplify things as much as possible for myse=
lf :)</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu=
, Dec 10, 2015 at 3:54 PM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div clas=
s=3D"gmail_extra"><span class=3D""><br><div class=3D"gmail_quote">On 10 Dec=
ember 2015 at 21:16, Michael Habibi <span dir=3D"ltr">&lt;<a href=3D"mailto=
:mikehabibi@gmail.com" target=3D"_blank">mikehabibi@gmail.com</a>&gt;</span=
> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div>What is the best option for=
 adding all of these and compiling? As far as I know, you have to do one of=
 the following:</div><div><br></div><div>1) Use a fetch that fetches a tarb=
all with all your source, or a repo with all of your source</div><div>2) Us=
e a million-line long SRC_URI assignment to include every file that your ap=
plication uses.</div><div><br></div><div>Is there a third (or fourth) optio=
n that I may have missed?</div></blockquote></div><br></span>(1) is definit=
ely my recommendation, separate the application development from the recipe=
 to build the application.</div><span class=3D"HOEnZb"><font color=3D"#8888=
88"><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</d=
iv></font></span></div>
</blockquote></div><br></div>

--001a1140fa063cca780526926d8c--
