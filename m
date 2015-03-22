Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DC9DE0084F; Sun, 22 Mar 2015 13:17:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.175 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f175.google.com (mail-pd0-f175.google.com
	[209.85.192.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97A5FE005B6
	for <yocto@yoctoproject.org>; Sun, 22 Mar 2015 13:17:39 -0700 (PDT)
Received: by pdbop1 with SMTP id op1so165391081pdb.2
	for <yocto@yoctoproject.org>; Sun, 22 Mar 2015 13:17:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=ucy8eeX6vrjkb5Lria5Ete+cZFzRjz0Sh4rOn00RVdA=;
	b=p1v2G9aZ2DltsA9YWaOldX1MYIbepXvg4jleJrUmcCVO2oF4hFzH+DIkOlitN5bXJ9
	Adnr2cNlWqrW8roxlgI0v3MNeGQ20aPRc/u/7+IjEQnVQ5FfjQWvzAxKoZl3mtzlVyhb
	1ThxIXnhZECd+qt3rulVE/+nmo/4n4R/OIoHmPtx7XlnNmmQdNKd3sTwX/fMP5YF2adg
	Gbf0bzdmndLHh/gFd+jeUrIr8fmI5KTVs/pUivqCSE5gbMtAG6rc+6yCvbenAeSPr3u6
	CSIMotuv9dr2NC1+bIO7serZXiI4iuZ+rmWjzwj49WxdnC3cd9nL6sf/LqqrNUlQJVwn
	dvfw==
MIME-Version: 1.0
X-Received: by 10.68.172.3 with SMTP id ay3mr14865959pbc.94.1427055459137;
	Sun, 22 Mar 2015 13:17:39 -0700 (PDT)
Received: by 10.70.38.9 with HTTP; Sun, 22 Mar 2015 13:17:39 -0700 (PDT)
In-Reply-To: <CAK18fxEStLTUzh7O-YVHyGiqnBK4oVwGRKiO==nMmKiYngH0gQ@mail.gmail.com>
References: <550EB367.9070508@mlbassoc.com>
	<CAK18fxEStLTUzh7O-YVHyGiqnBK4oVwGRKiO==nMmKiYngH0gQ@mail.gmail.com>
Date: Sun, 22 Mar 2015 21:17:39 +0100
Message-ID: <CALbNGRT3PGeeMpKMPCacpakQXeD81PwWK3=HF4EqCt2EyKH1_A@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto Project <yocto@yoctoproject.org>, Gary Thomas <gary@mlbassoc.com>
Subject: Re: [meta-raspberrypi] RaspberryPi2 - no audio?
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
X-List-Received-Date: Sun, 22 Mar 2015 20:17:47 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Mar 22, 2015 at 1:25 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> Hello,
>
> On Sun, Mar 22, 2015 at 1:19 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>>
>> I just built Poky/Yocto for the RaspberryPi2, straight out
>> of the box using this configuration:
>>
>> Build Configuration:
>> BB_VERSION        = "1.25.0"
>> BUILD_SYS         = "i686-linux"
>> NATIVELSBSTRING   = "Fedora-13"
>> TARGET_SYS        = "arm-amltd-linux-gnueabi"
>> MACHINE           = "raspberrypi2"
>> DISTRO            = "amltd"
>> DISTRO_VERSION    = "1.7+snapshot-20150321"
>> TUNE_FEATURES     = "arm armv7a vfp thumb neon callconvention-hard vfpv4
>> cortexa7"
>> TARGET_FPU        = "vfp-vfpv4-neon"
>> meta              = "master:12b6cf0f2212519b14333519746174a5b941f7bf"
>> meta-amltd        =
>> "cutting-edge:d9350ea229c04d64111f38e638f372a1bac87be0"
>> meta-raspberrypi  = "master:b896a7da70dd7a16ba7ffd664f7747cb37e1d142"
>>
>> All seemed to go OK, but when I try to play audio, there are
>> no sound cards found.  Is there some configuration I need?
>> Once I get it going, how can I select between the internal
>> (phono) audio and HDMI?
>>
>> Note: I had this working just fine on my RaspberryPi (model B)
>>
>
> We didn't test audio on Raspberrypi 2. So, probably the best thing to do it
> to shoot a redmine bug and maybe help with some patches? Otherwise we will
> try to pick it as soon as possible.
>
> Thanks a lot.
>
> --
> Andrei Gherzan
>
Had same - had no time to send yet [1]...

Andreas

[1] https://github.com/schnitzeltony/meta-raspberrypi/commit/d353859131ead0d45cab322d5e93b3f8391dd2ba

