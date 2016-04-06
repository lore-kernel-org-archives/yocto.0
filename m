Return-Path: <ronaldo@brc2.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF3C8E00B30; Wed,  6 Apr 2016 07:28:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.68 listed in list.dnswl.org]
Received: from mail-oi0-f68.google.com (mail-oi0-f68.google.com
	[209.85.218.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A331E006C7
	for <yocto@yoctoproject.org>; Wed,  6 Apr 2016 07:28:00 -0700 (PDT)
Received: by mail-oi0-f68.google.com with SMTP id v126so7332217oia.3
	for <yocto@yoctoproject.org>; Wed, 06 Apr 2016 07:28:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=brc2-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=rT8Sjsah3VgZNzWlB6VHrvtwygYozp+qthmVRq+Sky8=;
	b=W1AIZGc0+43Tvp8c9BHSRnGQiy9aMFe+xtA+q0QQGa8MdtPCwRb/A7fREn3DVW47bj
	oxyTy81z4IOT2+lAkmDdJZiVK6GTaxT1j4tR/h/Wvg0T5XIrUNvvJSVrDRfTxCgz3s69
	url2t/kUpq92rlWwlREEwwH7O45ziLWMLYXhL1TdIeFPVI2R7Uq1TGRovv1Wxk4MNrt5
	yrCWFJPvYm0EMx5jNYLyxuaRXnvgsY6B4zbWJv7UPah5GFjNcM//k659duNb18+rEGwZ
	+zhJavWO84lIMYmUshOl5xGBsy2kYs5xsGYxnZl72X53jf9UvsvzLXodLEFghk9wNx7v
	7BwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=rT8Sjsah3VgZNzWlB6VHrvtwygYozp+qthmVRq+Sky8=;
	b=VB00DfgJqnIt0RO7ijjy/Za3KYAbzrGMFBTEgDhFwTx588vUVnXZzvyAuRL6cU5d7S
	HxMI2xKJJMLyq8u5n4zvInJniGWTPa5/ePC+9V6xMNwpraS5ikWLIuma/MnZB3GVR7m8
	49hQzJafPhn/Lw2x3QDnBsQvXxWmj0RbU45iOc7I+jqWJTAJ7xwmmvGuOc5vbdsHSQ6C
	g4SDnS3vKba4L3D7S9ZO+aGtPsllzpfr3hTUjZQuQTu3tI+NfxiToe5dhEF4/9x5smux
	odHkSd3I35e10uXAvsI9hivpvxJfbMVSaN3yZ9HOFn9DbonlONhUWfddyqZvsC/Q9bOd
	rUdg==
X-Gm-Message-State: AD7BkJJD7IRdb/0yiDDtGRsfiqDM0spMuLY/fc6dpm5SbUNfaRjFwywRVoghIcVCKgQjzKB7QICAkE+1QFSM9w==
MIME-Version: 1.0
X-Received: by 10.202.215.86 with SMTP id o83mr2469191oig.55.1459952879459;
	Wed, 06 Apr 2016 07:27:59 -0700 (PDT)
Received: by 10.202.4.71 with HTTP; Wed, 6 Apr 2016 07:27:59 -0700 (PDT)
In-Reply-To: <CAJTo0LYYRHjZGezVmKBzhv9tEtEJmAEDdMPGMCmcFy==xQVOXQ@mail.gmail.com>
References: <CALRMKQr4A0r2Mseu1uuQaZXpWKokjQ=ZizfkatR4J2mjpQpSvw@mail.gmail.com>
	<25644105.gyxDGl902X@rjs-zotac.streifs.net>
	<CALRMKQo7GPHQLPLTm_dO9uoQgBhGriNW9GFBoG6VOPfaqCeHAA@mail.gmail.com>
	<CAJTo0LaW9jWNK8x_MuxoSjJUsWVTBTA5mN4EtmaFFYLhAC4Edw@mail.gmail.com>
	<CALRMKQrWwR03YyenAefS1GaPQ34GhmRCz0r5GS=rR+1gx45Jqg@mail.gmail.com>
	<CAJTo0LYYRHjZGezVmKBzhv9tEtEJmAEDdMPGMCmcFy==xQVOXQ@mail.gmail.com>
Date: Wed, 6 Apr 2016 08:27:59 -0600
Message-ID: <CALRMKQri=KgPhxk-0iTUxD59PU-K0i6bfvcxkVF6i_J7UX_Agw@mail.gmail.com>
From: Ronald Oakes <ronaldo@brc2.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Rudolf J Streif <rudolf.streif@gmail.com>
Subject: Re: Python do_install fails on QEMUX86-64 and corei7-64 under Debian 8.0.3 isolated station
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
X-List-Received-Date: Wed, 06 Apr 2016 14:28:03 -0000
Content-Type: text/plain; charset=UTF-8

Unfortunately, my build system is airgapped from the Internet, making
copying files into emails (or attaching them) extremely difficult.

RonO

On Wed, Apr 6, 2016 at 4:33 AM, Burton, Ross <ross.burton@intel.com> wrote:
>
> On 5 April 2016 at 23:17, Ronald Oakes <ronaldo@brc2.com> wrote:
>>
>> I'm basing off of poky-jethro-14.0.1.tar.bz as downloaded from
>> yoctoproject.org.  I've also got meta-intel from the git of that name
>> to support the corei7, my eventual target.
>
>
> The full compile and install logs would be helpful.
>
> Cheers,
> Ross

