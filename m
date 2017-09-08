Return-Path: <mickey.happygolucky@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72641E00CCD; Fri,  8 Sep 2017 05:59:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mickey.happygolucky[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f67.google.com (mail-vk0-f67.google.com
	[209.85.213.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDB6FE00CC6
	for <yocto@yoctoproject.org>; Fri,  8 Sep 2017 05:59:55 -0700 (PDT)
Received: by mail-vk0-f67.google.com with SMTP id t10so625776vke.2
	for <yocto@yoctoproject.org>; Fri, 08 Sep 2017 05:59:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=JWS6O/LF6rAaBlLPmk/42J096lhlaTH9DXZB80XvMig=;
	b=abjBwNFo4MtLxgBzyhpRTyyeVi7Gx75tZ4qW/sZC3354Ldpv5EapIX8s1fyXIInfpQ
	t1gPKpxjIzXMRzv0XtSkvY94Xx2g84dBUn6AupV1Bfj6MYQ9ood4KqArjSNn2t5ayNmd
	QhrI8xngpv2ASpN6ye7rHuVPQ7wdLR9yCtvZne8DnIXMQqyiiZ31rg0nS2pJOufrAfvi
	GP1KnQfdblTVGVFMihpWJTLS4K3p5VlmmKX0PrafBjtI29h9yWVy+v9cCydcv5+DbKnw
	kOBcXGVkgtuj0ZNshRjI73TF8B/MbA1u6k95+n3RsoRkJSMisS3p44TquP1sGDvK7j5Q
	lrXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=JWS6O/LF6rAaBlLPmk/42J096lhlaTH9DXZB80XvMig=;
	b=KZx+2WjLBXMtAEHE95hzkjUPBnENvEmAykqJ/7grhppSMEBc6E+8EtSp82Exjc/wyq
	MNWgY1WjgvrQ6iXwV3tN88Ce6WkQgznADyl8tvIp/ImneVjaf52/VZW1AE871x/AYXAv
	iK8KIChDIG29dJCD59hOKXiv5AMhUNx652PtOt8km4XCD6eaY4GBjXCu5BOdEwW6czOH
	TrJKwBqy+MduN1F1vyWt7dAnA6lXT0cwQ0mhLt+Jszb2/6AYOVNCIZal9VRq30Iqzzv8
	XbFrhV7ZPTYFWtydTyXt6LPZ7SiNWfq1MPIc9yZNCl1JXLJs0XBhh3TTgmbVCacHjKeN
	1c/A==
X-Gm-Message-State: AHPjjUhEkISsUEmUiHTqtRHZ1WQ0IgObMA87UKTcEGP9i0cqMDffy5OP
	fGvsLtr7zYr0nAYnhQmsyFEEhYlN+w==
X-Google-Smtp-Source: AOwi7QCOrPghU2LuS6/DatvCq8SToz0XMzGMffv6h4ePfApnHTnO+qheCzUAMhKfLlrru517dL/q2QbxvGDjU8x5haQ=
X-Received: by 10.31.63.204 with SMTP id m195mr1686025vka.111.1504875594834;
	Fri, 08 Sep 2017 05:59:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.201.130 with HTTP; Fri, 8 Sep 2017 05:59:54 -0700 (PDT)
In-Reply-To: <CAK18fxGP6bRKsHZe2MP4g_zX34rTkp-Ao1b2KS2Lr2d-5-JCKw@mail.gmail.com>
References: <1503576301-18920-1-git-send-email-mickey.happygolucky@gmail.com>
	<1504650859-5194-1-git-send-email-mickey.happygolucky@gmail.com>
	<CAPyrkgyu0G4WWbjTgz_N4ErrpA9QsCVvPmJPE1hP4J56h5kTEA@mail.gmail.com>
	<CAK18fxGP6bRKsHZe2MP4g_zX34rTkp-Ao1b2KS2Lr2d-5-JCKw@mail.gmail.com>
From: Yusuke Mitsuki <mickey.happygolucky@gmail.com>
Date: Fri, 8 Sep 2017 21:59:54 +0900
Message-ID: <CACMwXoVmJ7MdDYxZU=bEtVg6w505j1mFWPjiNacSy6f=k1X0hA@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v2 1/2] bluez5: add functions/variables to enabling bluetooth on another raspberrypi
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
X-List-Received-Date: Fri, 08 Sep 2017 12:59:56 -0000
Content-Type: text/plain; charset="UTF-8"

Hello Andrei and Paul

Thanks for your replies.
I will create PR in github.


2017-09-07 2:52 GMT+09:00 Andrei Gherzan <andrei@gherzan.ro>:
> On Wed, Sep 6, 2017 at 10:18 AM, Paul Barker <pbarker@toganlabs.com> wrote:
>>
>> On Tue, Sep 5, 2017 at 11:34 PM, Yusuke Mitsuki
>> <mickey.happygolucky@gmail.com> wrote:
>> > functions/variables in this bbappend implemented for only raspberrypi3.
>> > But these must be able to used to enabling bluetooth on another
>> > raspberrypi that has bluetooth feature such as raspberrypi0-wifi.
>> >
>> > The simple solution is a duplicating these but it is not good ideas for
>> > maintainance.
>> >
>> > Add functions/variables follows to simplify to enabling bluetooth on
>> > another raspberrypi that has bluetooth.
>> > - BCM_BT_SOURCES
>> > - enable_bcm_bluetooth()
>> > - BCM_BT_FIRMWARE
>> > - BCM_BT_SERVICE
>> >
>> > Signed-off-by: Yusuke Mitsuki <mickey.happygolucky@gmail.com>
>> > ---
>> >  recipes-connectivity/bluez5/bluez5_%.bbappend | 18 ++++++++++++++----
>> >  1 file changed, 14 insertions(+), 4 deletions(-)
>> >
>> > diff --git a/recipes-connectivity/bluez5/bluez5_%.bbappend
>> > b/recipes-connectivity/bluez5/bluez5_%.bbappend
>> > index 956d776..b2fbf22 100644
>> > --- a/recipes-connectivity/bluez5/bluez5_%.bbappend
>> > +++ b/recipes-connectivity/bluez5/bluez5_%.bbappend
>> > @@ -1,6 +1,6 @@
>> >  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>> >
>> > -SRC_URI_append_raspberrypi3 = " \
>> > +BCM_BT_SOURCES =  " \
>> >      file://BCM43430A1.hcd \
>> >      file://0001-bcm43xx-Add-bcm43xx-3wire-variant.patch \
>> >
>> > file://0002-bcm43xx-The-UART-speed-must-be-reset-after-the-firmw.patch \
>> > @@ -9,7 +9,7 @@ SRC_URI_append_raspberrypi3 = " \
>> >      file://brcm43438.service \
>> >      "
>> >
>> > -do_install_append_raspberrypi3() {
>> > +enable_bcm_bluetooth() {
>> >      install -d ${D}/lib/firmware/brcm/
>> >      install -m 0644 ${WORKDIR}/BCM43430A1.hcd
>> > ${D}/lib/firmware/brcm/BCM43430A1.hcd
>> >
>> > @@ -19,8 +19,18 @@ do_install_append_raspberrypi3() {
>> >      fi
>> >  }
>> >
>> > -FILES_${PN}_append_raspberrypi3 = " \
>> > +BCM_BT_FIRMWARE =  " \
>> >      /lib/firmware/brcm/BCM43430A1.hcd \
>> >      "
>> >
>> > -SYSTEMD_SERVICE_${PN}_append_raspberrypi3 = " brcm43438.service"
>> > +BCM_BT_SERVICE =  " brcm43438.service"
>> > +
>> > +SRC_URI_append_raspberrypi3 = " ${BCM_BT_SOURCES}"
>> > +
>> > +do_install_append_raspberrypi3() {
>> > +    enable_bcm_bluetooth
>> > +}
>> > +
>> > +FILES_${PN}_append_raspberrypi3 = " ${BCM_BT_FIRMWARE}"
>> > +
>> > +SYSTEMD_SERVICE_${PN}_append_raspberrypi3 = " ${BCM_BT_SERVICE}"
>> > --
>> > 2.7.4
>> >
>>
>> This and the follow up patch look excellent, should be easy to modify
>> in the future if we need to.
>>
>> We have switched to using github pull requests for meta-raspberrypi.
>> Could you open a pull request on
>> https://github.com/agherzan/meta-raspberrypi with these changes
>> please? Let me know if you have any issues doing that.
>
>
> +1 from my side.  Thanks for this change. We still try to keep patches
> rolling to the mailing list too but the main development now happens through
> PRs in github.
>
> --
> Andrei Gherzan

