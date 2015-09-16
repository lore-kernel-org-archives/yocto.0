Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96613E00C73; Wed, 16 Sep 2015 14:18:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f174.google.com (mail-ig0-f174.google.com
	[209.85.213.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 401B8E00BE9
	for <yocto@yoctoproject.org>; Wed, 16 Sep 2015 14:18:25 -0700 (PDT)
Received: by igcpb10 with SMTP id pb10so43428765igc.1
	for <yocto@yoctoproject.org>; Wed, 16 Sep 2015 14:18:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=kEsHDtnXTrs4Wi0S/AbUJARfzoPpgybWkKe+CQCvUtI=;
	b=uoviL9lRqqFo1yjI3jCkQBx1moUo7/xhMHnF6KWfpIfpj7CkGebB3dddlG7b5qoLnI
	1kil5B6WDSn4jGIh3ZfLYT78PTNKpb+GAQRypA9rdDY5Hcg+Fey50Pn444CsTGwI2EX2
	1+ayPU6pXqc+fAB7DIA2BTCmF5YThir4ojH0wNA4z5uZkIwxFeM28xKljCw2+nfMCdpT
	DvGdyHwam/Io+/tr2a0FZf6tx/9HqBYA1Pzw37hLMiEdOhBIELDaeAhPgyuRHjZ8M06f
	re5l5VfZlSbiDWpqTYso9LgewEJqIDPy1V9EUbbE3WTSJAIC7nn1VPePXs6Emj6+hRis
	5vvA==
X-Received: by 10.50.117.100 with SMTP id kd4mr415599igb.75.1442438305498;
	Wed, 16 Sep 2015 14:18:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.142.130 with HTTP; Wed, 16 Sep 2015 14:17:56 -0700 (PDT)
In-Reply-To: <D941F49FF00E498C965F16A3807C298F@PAULD>
References: <A240ECF1A90D49B7ACC78379329FE808@PAULD> <55F82F8A.0@gmail.com>
	<F7097EDE-4D17-48E1-9D35-E4A59F64BFD6@gmail.com>
	<55F913D0.2000109@topic.nl>
	<F45FA12158354FC0BEDC44D9390F3A23@PAULD>
	<CAMKF1soA2ZwbaNme09KpwmsNt_6Aim-hO+sMvhZMWAKRxztJfQ@mail.gmail.com>
	<D941F49FF00E498C965F16A3807C298F@PAULD>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 16 Sep 2015 14:17:56 -0700
Message-ID: <CAMKF1sr-M1pmnLwBwtsiKVw5ZuWgWEanTkj6_rhOY3WBMKS0Qw@mail.gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: I hate busybox!
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
X-List-Received-Date: Wed, 16 Sep 2015 21:18:27 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Sep 16, 2015 at 2:07 PM, Paul D. DeRocco <pderocco@ix.netcom.com> wrote:
> Do you mean systemd or syslinux?

none of these it was typo it should be read as 'systems'

