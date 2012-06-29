Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E1A4E006D9
	for <yocto@yoctoproject.org>; Fri, 29 Jun 2012 12:28:32 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q5TJSVku003030
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 29 Jun 2012 12:28:31 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 29 Jun 2012 12:28:31 -0700
Message-ID: <4FEE01D0.5000403@windriver.com>
Date: Fri, 29 Jun 2012 15:28:16 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Markus Hubig <mhubig@imko.de>
References: <CAGws1TuNe+=5YzBOMJv30KgY7o+N9_1kqryRPKpB+27Un0=CZQ@mail.gmail.com>
	<4FE9B6EE.4010901@windriver.com>
	<CAGws1TsrdgjaOfi80PXNadBDmYuzV75P7gdGJJQ3tUVokWiRpA@mail.gmail.com>
	<4FE9C097.60400@windriver.com>
	<CAGws1TtBH8wvXAL9KDaA1EAE_hb-Lxv32EkpgPyem1fyP5U2ZA@mail.gmail.com>
	<4FE9D6CB.1080800@windriver.com>
	<CAGws1Tt-UuLbVt0gqwV_v9H0oxWhe26tEG73y5w6TY1WE8VRgg@mail.gmail.com>
	<4FEDB1DA.1040504@windriver.com>
	<CAGws1TtREZg6Fa2+KKcshRHP-XJz372NkYMZ2jWM5m7vxoVrfg@mail.gmail.com>
	<CAGws1TudcY2VMD+WvMDiWNPCpgwdfNVhL=yirANRZzqnKTs-mQ@mail.gmail.com>
In-Reply-To: <CAGws1TudcY2VMD+WvMDiWNPCpgwdfNVhL=yirANRZzqnKTs-mQ@mail.gmail.com>
Cc: Yocto Project Mailing List <yocto@yoctoproject.org>
Subject: Re: BSP for taskit stamp9g20
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 29 Jun 2012 19:28:32 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-06-29 01:19 PM, Markus Hubig wrote:
> Hello @all, hello Bruce!
>
> https://bitbucket.org/imko/meta-stamp9g20
>
> here you can find my first attempt of a BSP for the taskit stamp9g20 and
> portuxg20 Board. Until now there is only the kernel part. Please have a look
> and give comments.

I had a look, and it is definitely a good start. I can see that it
is still a work in progress, since you have one unreferenced file
(stamp9g20-non_hardware.cfg) and a few zero byte files in for the
kernel board description.

The board description looks good, standard, -rt kernels and hardware
configurations. If you do end up with board patches you would want
to update the stamp9g20-preempt-rt.scc with 'branch stamp9g20' after
the ktype include. The re-use of the -rt base branch is in some of the
basic BSPs to show how we can do it, but if you actually patch the
kernel, you'd want to keep them separate (typically).

stamp9g20.cfg actually looks pretty good. Those are hardware or board
specific settings, so generally speaking, they are fine in a board
configuration.

Taking it to the shiny new 3.4 kernel is also something to consider! :)

Cheers,

Bruce


>
> Thanks, Markus
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


