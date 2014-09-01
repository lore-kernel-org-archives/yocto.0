Return-Path: <daiane.list@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 930D9E0076B; Mon,  1 Sep 2014 07:07:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (daiane.list[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vc0-f175.google.com (mail-vc0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47999E006B5;
	Mon,  1 Sep 2014 07:06:56 -0700 (PDT)
Received: by mail-vc0-f175.google.com with SMTP id lf12so5423443vcb.6
	for <multiple recipients>; Mon, 01 Sep 2014 07:06:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=yt09EMGnLzttGD9C8Ey5el15gFCnb7xoGpFSzvkLy5M=;
	b=FrHErm181AtLPaGLHdSYUGr1iVOLFCNQhzlHfGC7D9BHbffIHHwahMmelvj3JRwiSf
	hqRExirPAVZzD3zVvtCyoDDVVC8PTfxRU9j3wbcNA0HnBf8g7zgAgs4syeDTuC5TL3UC
	d7+UMTf+7KGTFSaA3RJmX+PFUNy7E6pmXitnc1+lHkYInR7a6ut1Llf07PYEIyOI13MD
	o0xyE9DYa3BkbxnryB5OqlAPQUMaxahaSsQzLyUv6jlDdY1cFLAa8y1Ys3grFe+mMa4T
	xVP+iQeRcE+Y/9Kd5Fww5tz1Q3ifecEpGSLWLMJah4s2XPDQ2kMOkq/4RbKNxSjQGxMS
	h2VA==
MIME-Version: 1.0
X-Received: by 10.52.0.132 with SMTP id 4mr17535012vde.10.1409580415623; Mon,
	01 Sep 2014 07:06:55 -0700 (PDT)
Sender: angolini@gmail.com
X-Google-Sender-Delegation: angolini@gmail.com
Received: by 10.220.148.145 with HTTP; Mon, 1 Sep 2014 07:06:55 -0700 (PDT)
In-Reply-To: <CAP3RZoig37MzrDZV2Bbtozc1voKj4neoLH4S8wK4Og-yZBgs5Q@mail.gmail.com>
References: <CAP3RZoig37MzrDZV2Bbtozc1voKj4neoLH4S8wK4Og-yZBgs5Q@mail.gmail.com>
Date: Mon, 1 Sep 2014 11:06:55 -0300
X-Google-Sender-Auth: u4n0cMmsjE_Pzp7F6rzqR9OmIW4
Message-ID: <CA+jg_OV84fp8Aa3zrCfRe2PLinJfiwGWwyBevHe9y4nCo6a7NQ@mail.gmail.com>
From: Daiane Angolini <daiane.list@gmail.com>
To: jags gediya <jags.gediya@gmail.com>
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-freescale] hostapd and other packages with yocto for imx6sl-evk
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
X-List-Received-Date: Mon, 01 Sep 2014 14:07:06 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Sep 1, 2014 at 3:37 AM, jags gediya <jags.gediya@gmail.com> wrote:
> I am adding packages on core-image-minimal according to my requirement
> for imx6sl based custom board.
>
> For that i am changing the below file.
> poky/meta/recipes-core/packagegroups/packagegroup-core-boot.bb
>
> I have made below changes,
>
> RDEPENDS_${PN} = "\
>     base-files \
>     base-passwd \
>     busybox \
>     .
>     .
>     ${MACHINE_ESSENTIAL_EXTRA_RDEPENDS} \
>     iperf \
>     uim \
>     bt-firmware \
>     bluez5 \
>     pulseaudio \
>     wpa-supplicant \
>     wireless-tools"
>
> But i am not able to get pulseaudio in my file-system. What can be the reason?

I am not used with pulseaudio, maybe you need a specific tool, not
"pulseaudio" which should already being there, as it's the default for
DISTRO_FEATURE (if I remember it right)

Try take a look on this
http://layers.openembedded.org


>
> About hostapd,
>
> I am not able to find hostapd package bb file inside poky directory.
> although hostapd is available inside meta-openembedded, but when i am
> trying to add that package, i am getting the error.
>
> How can i enable hostapd in yocto image.

I think you should update bblayer.conf

>
> I am building yocto for imx6sl-evk based custom board.

It should not be a problem, if you made the machine conf file based on
imx6slevk board.


Daiane

