Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 153AFE00992; Thu,  1 Jun 2017 04:23:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.170 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f170.google.com (mail-qt0-f170.google.com
	[209.85.216.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92872E00992
	for <yocto@lists.yoctoproject.org>;
	Thu,  1 Jun 2017 04:23:09 -0700 (PDT)
Received: by mail-qt0-f170.google.com with SMTP id w1so6240704qtg.2
	for <yocto@lists.yoctoproject.org>;
	Thu, 01 Jun 2017 04:23:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=LRyxRn50S5GMdhTBS4oHW+FkFDjtKt5/q72Cdlt1osw=;
	b=jCqS4r3k69a8fYHKxNU9v5YVRPFQfRgwbcpxJbbD41rXff0GQEwZoEZkAhseg5sLLI
	2ane/M3n/At3/Xkn917TwDkCCBnjAJQrSIhN+IMbKY36VHIC9veIU2AL6/8Hor/PJnC1
	RG4ipyoZxs6Wbk5Vi0ioa0MIt+6XHJvb1GeeiaqBjopHTEBIL6sUaGactFwuVH3k3r8b
	GRZuLEMoGdUZgLZamkCZU1becK19gjPZo/5+wNbC88i4GBMQZiTi6MjkIr7Lkv+N0tDh
	j3fxH0PnLQnDECnnuDwyxqMgw3l4r6GIOnIgVLjqF/wbqoe3+348GsY471ZdoScoHeEm
	Tw9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=LRyxRn50S5GMdhTBS4oHW+FkFDjtKt5/q72Cdlt1osw=;
	b=IOPYEx8kU2yLeSLUrzP2Ewpdb6VdPq0uJHxwo2gAfjah2c2BTL5Mu/cmbuSPg/DJ7F
	NnpS+FZ50vWvHFtfa/c0hDlxscrTn1tCDc1qci9b2PSWSgSqtPDc6wkzVUk++ZiuFKh3
	VWdsk+UuJ3iMnytg8Lt/qrlXaAHvGhlO78oZMgXVu0qxR8JbWlQ+zGWYv0kLiv7e9r/t
	oVw6nbIxAHiQ3a6eDUIou42UWbXDhC0iCM0loVvVx7LrsKLhbdCJS9PDmWkg5s2ZqZQt
	Kd8WfBDxim1+VcImq+gb+Vd8wVW27KNPjDUTa3Crs/uAvQos6AmlY8Y1j3Un6n70PZ4U
	YK/A==
X-Gm-Message-State: AODbwcAN22H3IJV7ao/jFH0XiTpG0p21LwmgGVt4Y7jd65lkrJrBGQz4
	CvW+D6JnHoD/x+4afE0UakC/OZgWsx+d
X-Received: by 10.237.61.231 with SMTP id j36mr131150qtf.111.1496316188607;
	Thu, 01 Jun 2017 04:23:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.85.167 with HTTP; Thu, 1 Jun 2017 04:23:08 -0700 (PDT)
In-Reply-To: <CA+chaQcufcNiAh2s5PCtQc1ES4B0uYcsBotV3BG0uqG0NRgw0w@mail.gmail.com>
References: <20170530075723.18340-1-Martin.Jansa@gmail.com>
	<CAMKF1so+EmqtQFL-GbMyEQtpOOevOjRnqHbzXUvs4eb3m04XLw@mail.gmail.com>
	<CAPyrkgyar=GAr2QkqPe+Tjg=yp=yde_V3MKoXSeKZFb9StCXBw@mail.gmail.com>
	<CAJ86T=XF11yQjPFHXGHHk28MTQF1FQnEz_D+8s=6vk5AO6oFPQ@mail.gmail.com>
	<CAMKF1soe0qjKuyASY+sE4rcvOM-uAqzBVdNbJb2=f0c6gOhZ_w@mail.gmail.com>
	<CAK18fxF3uXOdsZkaN9f-DKJaMc+4GVfW28xTVK9a-01x+ktLXA@mail.gmail.com>
	<CAMKF1sqVEbdMKnqHHwsdWrs6aPDOowreRCZuk2h39J2XQEV8TA@mail.gmail.com>
	<CAPyrkgwGS+oheJHGudM-SiveTkdefgexcLoYfsbq+mReHXt+HQ@mail.gmail.com>
	<CA+chaQe2TbD08XjQpEfnLOfgNFcVMQH=f_FRnyAeabPAVsBndg@mail.gmail.com>
	<CA+chaQcufcNiAh2s5PCtQc1ES4B0uYcsBotV3BG0uqG0NRgw0w@mail.gmail.com>
From: Paul Barker <pbarker@toganlabs.com>
Date: Thu, 1 Jun 2017 12:23:08 +0100
Message-ID: <CAPyrkgwPwe_Fqi0nGna=ud4opuWFVGntUh8=0Kg95OzxTui-9w@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [PATCH][meta-raspberrypi] linux-raspberrypi_dev: don't use AUTOREV
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
X-List-Received-Date: Thu, 01 Jun 2017 11:23:11 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 1, 2017 at 8:10 AM, Martin Jansa <martin.jansa@gmail.com> wrote=
:
> And it's not clear from the diff you send, but like linux-yocto-dev.bb
> example above, the recipe needs to be renamed from linux-raspberrypi_dev.=
bb
> to linux-raspberrypi-dev.bb to make it different provider.
>
> On Thu, Jun 1, 2017 at 9:08 AM, Martin Jansa <martin.jansa@gmail.com> wro=
te:
>>
>> Yes, Paul approach looks good to me, I think it was what was suggested i=
n
>> first replies to my SRCREV change and I agree with that, I just haven't =
had
>> time to send updated patch.
>>
>> Paul if you have the patch ready please send it, thanks!.
>>

I've submitted the patch via GitHub as per the new contributing
instructions for meta-raspberrypi.

https://github.com/agherzan/meta-raspberrypi/pull/82

Cheers,

--=20
Paul Barker
Co-Founder & Principal Engineer
Tog=C3=A1n Labs Ltd

