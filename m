Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 605EDE00948; Fri,  1 Jul 2016 10:02:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37A7FE007E4
	for <yocto@yoctoproject.org>; Fri,  1 Jul 2016 10:02:18 -0700 (PDT)
Received: by mail-io0-f174.google.com with SMTP id f30so105343948ioj.2
	for <yocto@yoctoproject.org>; Fri, 01 Jul 2016 10:02:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=q/v1r478fSxqMbWR+cdnvxPCLk4kfL/6/je3Z935Hrg=;
	b=rBUAg75LCwt39voF2BkLsWo4IwHDADDPJ+f2f2qvt/d9QZHfUZMmZkeXF2sbXWcZnP
	OIqeTe4tYT35XrWz2lvBYL4fW6vzFnhl9AEzNJarWVENi9R9hNJpDVvWDNWEznEBEdl5
	AWq1xhEbeNwZDI1DeugsiRNJyEZWNNEUwnZ07dsZw/wjoHvB1DXeVTJVulXh6S161oWq
	8u0OXNC8JX33ZCARGAsdlAFIzMxC97V+QD7v+5kOYGNRb5LckE8oQzgA4rbY4JZlWfQf
	cyisJvAJM++vJbdTq0IYSQNxl0/PC4hsNEUR01z570DOarr/9Y4Lq1DyP7OnC1YRJtv2
	ZePw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=q/v1r478fSxqMbWR+cdnvxPCLk4kfL/6/je3Z935Hrg=;
	b=E7qNYuOyYnZHitqcQGifDhULfztxHV40v+SSuRIxFUoEMie1boWiuejOfC+4Jygmg8
	pCe7xBhtpXUbzsqCjoKs3EQA3OwSk8uoiFrE9MBaM5wl+MqzUGWS7cg278syeSo4aidq
	NBml8SOGlsFCy6vi4PIZPZR+b0qw9ckPHjwT7iDB76eQC4gko++39tVEin1Zks9sv30q
	n4EvQxbLTiv4tV5Z3Lk1UiotFWqv3r2AVTggnJnahxB71IA6XdVfJ6Yjy9KPrZU7U8U9
	Pkm4mb3Z33qVK38YRioiYABIBEWoxS/duGV54geZ/IGbmEDg8vfQLkVpVfliRF1Tccy1
	uYYQ==
X-Gm-Message-State: ALyK8tI7cp1Vx5szyVnniQt8xhHFoqv4Acmnw413UuxDgZCEz3rEN5MxKvihsq2XbyYJPnoVtayldhnnIkwxS1lJ
X-Received: by 10.107.135.137 with SMTP id r9mr22910457ioi.133.1467392537932; 
	Fri, 01 Jul 2016 10:02:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.142.151 with HTTP; Fri, 1 Jul 2016 10:01:58 -0700 (PDT)
In-Reply-To: <CAF3SDA4+AzfPjKDgxisVjdT_Guvujr6KLvXRVRZuTNZyOwTGpg@mail.gmail.com>
References: <CY1PR0101MB1594413BBE9700E6A3EFC6E9D7250@CY1PR0101MB1594.prod.exchangelabs.com>
	<CAF3SDA4+AzfPjKDgxisVjdT_Guvujr6KLvXRVRZuTNZyOwTGpg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 1 Jul 2016 18:01:58 +0100
Message-ID: <CAJTo0LbhtsE_bMdiVWrVkZWkHTero5Z+TDn0iuPzGivSH8239Q@mail.gmail.com>
To: "Daniel." <danielhilst@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Takashi Matsuzawa <tmatsuzawa@uievolution.com>
Subject: Re: Shorter build time?
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
X-List-Received-Date: Fri, 01 Jul 2016 17:02:22 -0000
Content-Type: multipart/alternative; boundary=001a113ec842f84e88053695f2df

--001a113ec842f84e88053695f2df
Content-Type: text/plain; charset=UTF-8

On 1 July 2016 at 17:37, Daniel. <danielhilst@gmail.com> wrote:

> I read that python can't execute multiple threads simultaneously, but
> that wouldn't be a problem if each python task is executed at its own
> interpreter instance (process). This last statement is what I don't
> really know, some experts on Yocto's internals may clarify that, maybe
>

Yes, each worker is a separate Python process.

Ross

--001a113ec842f84e88053695f2df
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 1 July 2016 at 17:37, Daniel. <span dir=3D"ltr">&lt;<a href=3D"mailto:da=
nielhilst@gmail.com" target=3D"_blank">danielhilst@gmail.com</a>&gt;</span>=
 wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex"><div id=3D":eeq" class=3D"a3s aXj=
CH m155a752cc1db9e0b">I read that python can&#39;t execute multiple threads=
 simultaneously, but<br>
that wouldn&#39;t be a problem if each python task is executed at its own<b=
r>
interpreter instance (process). This last statement is what I don&#39;t<br>
really know, some experts on Yocto&#39;s internals may clarify that, maybe<=
/div></blockquote></div><br>Yes, each worker is a separate Python process.<=
/div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</=
div></div>

--001a113ec842f84e88053695f2df--
