Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CED7BE008E4; Thu, 15 Mar 2018 13:43:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_IMAGE_ONLY_16,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,T_REMOTE_IMAGE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (balazovic.peter[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 1.1 HTML_IMAGE_ONLY_16 BODY: HTML: images with 1200-1600 bytes of
	words
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-wr0-f193.google.com (mail-wr0-f193.google.com
	[209.85.128.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05AB2E00529
	for <yocto@yoctoproject.org>; Thu, 15 Mar 2018 13:43:16 -0700 (PDT)
Received: by mail-wr0-f193.google.com with SMTP id f14so9611143wre.8
	for <yocto@yoctoproject.org>; Thu, 15 Mar 2018 13:43:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:message-id:in-reply-to:references:subject
	:mime-version; bh=Cef9Mp5GP40qH4Dk4teZMZh16z/KGQek59vQlly6vEM=;
	b=qR0KUhcMqSiPexTjiUF/tr1ZSLf1X4lAXseoxerQDHcjGFV/to78GIECdXITMmx1Y9
	JKeuZSQ8AV+nprwOD/hRRbxPXa26En2UmY1qrCU3vrD/0Pf5nR26mfXSBAuTFmjcsjSi
	7qbuAVn5Pa2gb/tp7WCDY9vm2pIuP5Jp9l0Z7/55BlmYbWtqKtfyr1AzPc5t1ME75aH6
	iKtZt1mLFb2dm3tTmB9qz+0+M8r+/K/rEpC9XQKnxUfjayRVVOUiGCwy5NjNjRXUY9S7
	3Uubr3PG7OaERq2QDAxZTQ5HMBijF3CUA03jEK4pUDWGs2khvzOm7BiA6seq+wssMlAr
	NBrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:message-id:in-reply-to
	:references:subject:mime-version;
	bh=Cef9Mp5GP40qH4Dk4teZMZh16z/KGQek59vQlly6vEM=;
	b=dS4TX/egPR/qV339203Nh5rK4u7QuOUiM6B1M+dueOvkXB4fWCn5bi2m6ehzHR903d
	VzCHY8MHKLr11PcgRtEhN4CNh/tf6SQLSFfBrAwb4g0CqgvxPkI6EaNhvPHUtCu+i9Mg
	LwQWe2ZuPNG3FF7SuD7Dy4RCHAPYRcLRdR4GSEo9Spv3jFERTfIFGJF0pFXwo+ut3sJ4
	FoEJ4eYl7qO/8nKS5pwV4FSlhyl6HumUsUC+1YjPurOwBa0KobFgHnLMn6e2Y+kcr4iS
	qebRJpF+Bz82QvXbDyeHOLc7e9Jk+EypUUpDKpTNaU/uwlRcDMh1Z57DsFStccFkyf/+
	2TYw==
X-Gm-Message-State: AElRT7H1lLdxaIgJ24z/h8iC1GtE+H7fznBS1PPS5vFa7d22SvijmmfC
	R9ipVO2YbGQDpUDhiSytiYbHyxWP
X-Google-Smtp-Source: AG47ELtGf4K8O+cbBzThn2SW/dR4ckN/IU0i6wN6936aPw9BRW4aKQgrPqSjG54DM1+RYTGUfxQe2A==
X-Received: by 10.223.150.56 with SMTP id b53mr8751586wra.79.1521146595508;
	Thu, 15 Mar 2018 13:43:15 -0700 (PDT)
Received: from ubuntu ([141.170.140.31]) by smtp.gmail.com with ESMTPSA id
	a72sm3765894wme.28.2018.03.15.13.43.14 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 15 Mar 2018 13:43:15 -0700 (PDT)
Date: Thu, 15 Mar 2018 21:43:05 +0100
From: Peter Balazovic <balazovic.peter@gmail.com>
To: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <1521146506.local-368bb114-f6c3-v1.1.5-5834c99f@getmailspring.com>
In-Reply-To: <3fbaa987-5050-9663-b140-0520ebbaec39@windriver.com>
References: <3fbaa987-5050-9663-b140-0520ebbaec39@windriver.com>
X-Mailer: Mailspring
MIME-Version: 1.0
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: scipy recipe
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
X-List-Received-Date: Thu, 15 Mar 2018 20:43:17 -0000
Content-Type: multipart/alternative; boundary="5aaadad9_89f10ef_10c4"

--5aaadad9_89f10ef_10c4
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

is somehow to be fixed and available (recipe)?

Sent from Mailspring (https://link.getmailspring.com/link/1521146506.local-368bb114-f6c3-v1.1.5-5834c99f@getmailspring.com/0?redirect=https%3A%2F%2Fgetmailspring.com%2F&recipient=eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw%3D%3D), the best free email app for work
On Mar 15 2018, at 9:35 pm, Randy MacLeod <randy.macleod@windriver.com> wrote:
>
> On 2018-03-15 01:56 PM, Peter Balazovic wrote:
> > Hello all,
> >
> > I wonder if there is scipy recipe available?
> Not yet:
> https://layers.openembedded.org/layerindex/branch/master/recipes/?q=scipy
> It appears to be blocked by:
> https://github.com/scipy/scipy/issues/8226
> but apparently that's a bitbake issue, not a spip one.
> Care to take a look?
>
> >
> > Thanks.
> >
>
>
> --
> # Randy MacLeod. WR Linux
> # Wind River an Intel Company
>


--5aaadad9_89f10ef_10c4
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<div>is somehow to be fixed and available (recipe)=3F </div><br><br><div>=
<signature id=3D=22initial=22><div><div>Sent from <a href=3D=22https://li=
nk.getmailspring.com/link/1521146506.local-368bb114-f6c3-v1.1.5-5834c99f=40=
getmailspring.com/0=3Fredirect=3Dhttps%3A%2=46%2=46getmailspring.com%2=46=
&amp;recipient=3DeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw%3D%3D=22>Mailspring</a>, =
the best free email app for work</div></div></signature></div><div class=3D=
=22gmail=5Fquote=5Fattribution=22>On Mar 15 2018, at 9:35 pm, Randy MacLe=
od &lt;randy.macleod=40windriver.com&gt; wrote:</div><blockquote><br><div=
><div>On 2018-03-15 01:56 PM, Peter Balazovic wrote:</div><blockquote><di=
v>Hello all,</div><br><div>I wonder if there is scipy recipe available=3F=
</div></blockquote><br><div>Not yet:</div><br><div>https://layers.openemb=
edded.org/layerindex/branch/master/recipes/=3Fq=3Dscipy</div><br><div>It =
appears to be blocked by:</div><div>https://github.com/scipy/scipy/issues=
/8226</div><div>but apparently that's a bitbake issue, not a spip one.</d=
iv><div>Care to take a look=3F</div><br><blockquote><br><div>Thanks.</div=
><br><br></blockquote><br><br><div>--</div><div>=23 Randy MacLeod. WR Lin=
ux</div><div>=23 Wind River an Intel Company</div></div></blockquote><img=
 class=3D=22mailspring-open=22 alt=3D=22Open Tracking=22 width=3D=220=22 =
height=3D=220=22 style=3D=22border:0; width:0; height:0;=22 src=3D=22http=
s://link.getmailspring.com/open/1521146506.local-368bb114-f6c3-v1.1.5-583=
4c99f=40getmailspring.com=3Frecipient=3DeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw%3D=
%3D=22>

--5aaadad9_89f10ef_10c4--
