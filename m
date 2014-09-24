Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07ED9E00857; Wed, 24 Sep 2014 13:59:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.50 listed in list.dnswl.org]
Received: from mail-qg0-f50.google.com (mail-qg0-f50.google.com
	[209.85.192.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C27F4E00848
	for <yocto@yoctoproject.org>; Wed, 24 Sep 2014 13:59:12 -0700 (PDT)
Received: by mail-qg0-f50.google.com with SMTP id q107so6527951qgd.37
	for <yocto@yoctoproject.org>; Wed, 24 Sep 2014 13:59:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=nCA/kFLD4vPs7b0SlagOheUVWsm/k/NJeTVkIwX9yxU=;
	b=dTDGicIZwROgHcuGkG2kz3NyG8OpSkaE0F2a6f+Bwwst5+WmSw5T8tqtoa5Sm6XCDP
	jAa1qA/8AG3ETEy3IChs7ss+14trdb4vL9ArHgeQ2QSmB9sI+X4rb1/mtWBjKkVc8xZa
	+3fNhk3bmfO1/TBnoC3uHqbmr2hiF/laN8i+YK/RT7Tx/gcIuYHFZ5Bmfdz32c+PcOq5
	KBe2qlZFSdJONwPvHorjr/GnP7SWpfk8raRzBJWO9fDzeeJHmXmRyfiw4VRMqJBcxF5F
	UFEb/E3fM1qf1aNqTVP9AB1C1Sz+EdhMcPrnmCoZfz6HowKJAKoVTfPX5ZzYt7gDk7oV
	fE6Q==
X-Gm-Message-State: ALoCoQnfC8RjOIEUohxHRXpmouINlsiSeOKg2ZcdSA/nG12qWcxy68RqR9Hrc3VOlbm/VJhMG9u9
X-Received: by 10.229.74.136 with SMTP id u8mr12414040qcj.5.1411592351663;
	Wed, 24 Sep 2014 13:59:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.34.180 with HTTP; Wed, 24 Sep 2014 13:58:51 -0700 (PDT)
In-Reply-To: <3230301C09DEF9499B442BBE162C5E4825721849@SESTOEX04.enea.se>
References: <9ADD3FDE8B189B4AA2F8A3C711F8155E552870EB@fmsmsx111.amr.corp.intel.com>
	<3230301C09DEF9499B442BBE162C5E4825717E76@SESTOEX04.enea.se>
	<CAJTo0LZX5zVCyeDZVrhxsVoZRhHce4ePmxW+GiLLzm8OrFmm7w@mail.gmail.com>
	<3230301C09DEF9499B442BBE162C5E4825721849@SESTOEX04.enea.se>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 24 Sep 2014 21:58:51 +0100
Message-ID: <CAJTo0LYbQ9EwN_TZLMYyZhfcP0FyEeJFPc7A1x_iMQF1PLeYGw@mail.gmail.com>
To: Sona Sarmadi <sona.sarmadi@enea.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Minutes: Yocto Project Technical Team Meeting - Tuesday, September 9, 2014 8:00 AM US Pacific Time
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
X-List-Received-Date: Wed, 24 Sep 2014 20:59:19 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 24 September 2014 12:44, Sona Sarmadi <sona.sarmadi@enea.com> wrote:
>> As well as security fixes for the kernel, do you also cover security fix=
es for the
>> userspace (i.e. everything else in oe-core)?  Help keeping the rest of t=
he
>> system safe, and relevant fixes backported to the stable releases, is al=
ways
>> welcome.
>
> Yes, we monitor oss-security public mailing list, as soon a new vulnerabi=
lity (CVE) in the Linux kernel or userspace is announced in that list, we t=
ry to catch them and backport all which are relevant. We look for other sou=
rces as well but oss-securiy (oss-security@lists.openwall.com) is a good so=
urce/mailing list/ to detect vulnerabilities in open source products (kerne=
l & userspace).


Well this is convenient timing...  I'm sure you've noticed the CVE in
bash, will your team be able to submit patches for the releases we are
supporting (1.4 onwards)?

Ross

