Return-Path: <V.Vogelhuber@DigitalEndoscopy.de>
Received: from SRV-MSX01.digitendos.local
	(host-80-81-19-29.customer.m-online.net [80.81.19.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81AC8E0179B
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 01:43:26 -0700 (PDT)
Received: from [192.168.10.111] (192.168.10.111) by SRV-MSX01.digitendos.local
	(192.168.10.14) with Microsoft SMTP Server (TLS) id 14.2.347.0;
	Tue, 29 Oct 2013 09:43:23 +0100
Message-ID: <526F752A.1080103@digitalendoscopy.de>
Date: Tue, 29 Oct 2013 09:43:22 +0100
From: Volker Vogelhuber <v.vogelhuber@digitalendoscopy.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: Trevor Woerner <trevor.woerner@linaro.org>
References: <526E3AED.8010501@digitalendoscopy.de>
	<CALmOhgnRbmmN=vtYG4WVYCRgMZr4LgUJKwxs+ZK1HvtPV=fy8w@mail.gmail.com>
In-Reply-To: <CALmOhgnRbmmN=vtYG4WVYCRgMZr4LgUJKwxs+ZK1HvtPV=fy8w@mail.gmail.com>
X-Originating-IP: [192.168.10.111]
X-TM-AS-Product-Ver: SMEX-10.1.0.2244-7.000.1014-20254.005
X-TM-AS-Result: No--6.057700-0.000000-31
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Out of tree build yocto dylan
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
X-List-Received-Date: Tue, 29 Oct 2013 08:43:30 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 28.10.2013 19:46, Trevor Woerner wrote:
> On 28 October 2013 03:22, Volker Vogelhuber
> <v.vogelhuber@digitalendoscopy.de> wrote:
>> I'm currently trying to have the TMPDIR moved out of the normal repository path under dylan.
>> If I set it to
>> TMPDIR = "${TOPDIR}/../../build/tmp"
>
> Does it work better if you use an absolute path (you can use the same
> TMPDIR location, just specify it absolutely, instead of relatively)?
Sure it would work too, but I don't want to specify the path in an 
absolute way because
we have the toolchain in a mercurial repository, and other developers 
may have checked out
the toolchain in another path, so specifying it in an absolute way is no 
way to go.



