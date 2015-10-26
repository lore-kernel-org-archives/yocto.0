Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91922E00B8F; Mon, 26 Oct 2015 02:15:59 -0700 (PDT)
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
	*      [209.85.212.174 listed in list.dnswl.org]
Received: from mail-wi0-f174.google.com (mail-wi0-f174.google.com
	[209.85.212.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D38FE00978
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 02:15:53 -0700 (PDT)
Received: by wicll6 with SMTP id ll6so104458081wic.1
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 02:15:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan_ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=iJ+g19z66hJcaTe2SJdKHpmDipGk7nfXmXheOsI1eIg=;
	b=IdW4N/X7k5k7Fk7KLof4gWSbOztc9TJTkbwm1XCCtp8Vkq0R3739t8sVgdphd9axW8
	Ad0rKR4US8pnqoH0aCyLRfFMHQDroN7PV2sA+VyZ5TFbQrE7Q132ZCJGUrXE03/KM7iB
	E6gTZl1n0XQCOFqan1pAJa9H/cDEBUdVN3vt9qTsye5yrxx81x3oEAiMdnteHxO9QX+S
	5BajEIeIlu0nT9cu9hSO/reOIP9CyBPWvYHERbZ4Xvlcmt+xz/9PvbmXhxgpuCtCY15F
	NajyhjzL0oU4VH8zLIBUu65lGU/HOrCfovt5fV1kWm+5/DeoQbFeMUVh07j7qu4+MCp2
	whlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=iJ+g19z66hJcaTe2SJdKHpmDipGk7nfXmXheOsI1eIg=;
	b=CJakcwauzBgmEZzeQX1r5/6EhkZ9L9wAyaQyThcIvS0OlUGAjFbO2pPTC7p3JO8zGk
	UYR9OSZv1Lcobxv1ulXmX8ZnwlvT6gQO7pUI4HmhSefMYBr8TmgcrPnZfoOHmKkf5Pbn
	3YtRD9GQVERzCzVNOap60eKOmSHVdiA/tj5gPL3sSVlnP+E07kH+i5efCO+1BjS0tTjh
	RASCGM86piJh01PcGS4WPyHIwEJYCvDS3FO3AALVJPX6X+5SeUAXIs/VExE1X8Fe4lRR
	uTu/S09/n/iot3/y/hw9lLvw77DG7IGPmjKv5X0DGALobVlnxXCyTI7EXJVUbfb8V43p
	jLDQ==
X-Gm-Message-State: ALoCoQmSlLWzQTuZhC+BfEglKqrkSe4lSCZ/2xbkGgO4FQ+4oAb2YTYJBhcGazjbasoKRbkMjm4z
X-Received: by 10.194.71.114 with SMTP id t18mr3264064wju.83.1445850952004;
	Mon, 26 Oct 2015 02:15:52 -0700 (PDT)
Received: from resin (219.207.eduroam.dynamic.rbg.tum.de. [131.159.207.219])
	by smtp.gmail.com with ESMTPSA id
	fp4sm13085481wib.24.2015.10.26.02.15.51
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 26 Oct 2015 02:15:51 -0700 (PDT)
Date: Mon, 26 Oct 2015 10:15:49 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Message-ID: <20151026091549.GA19633@resin>
References: <1445812988-6456-1-git-send-email-net147@gmail.com>
	<5542134.NUiWrkt5lN@peggleto-mobl.ger.corp.intel.com>
MIME-Version: 1.0
In-Reply-To: <5542134.NUiWrkt5lN@peggleto-mobl.ger.corp.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v2] qtbase: enable Raspberry Pi support
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
X-List-Received-Date: Mon, 26 Oct 2015 09:15:59 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Paul,

On Mon, Oct 26, 2015 at 08:08:29AM +0000, Paul Eggleton wrote:
> On Monday 26 October 2015 09:43:08 Jonathan Liu wrote:
> > [Support #16]
> >
> > Signed-off-by: Jonathan Liu <net147@gmail.com>
> > ---
> >  recipes-qt/qt5/qtbase_%.bbappend | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >  create mode 100644 recipes-qt/qt5/qtbase_%.bbappend
> >
> > diff --git a/recipes-qt/qt5/qtbase_%.bbappend
> > b/recipes-qt/qt5/qtbase_%.bbappend new file mode 100644
> > index 0000000..3e5e667
> > --- /dev/null
> > +++ b/recipes-qt/qt5/qtbase_%.bbappend
> > @@ -0,0 +1,6 @@
> > +do_configure_prepend_rpi() {
> > +    cat > ${S}/mkspecs/oe-device-extra.pri << 'EOF'
> > +EGLFS_DEVICE_INTEGRATION = eglfs_brcm
> > +QMAKE_LIBS_EGL = -lEGL -lGLESv2
> > +EOF
> > +}
>
> I'm wondering if this is a good idea or not. I appreciate the intention, but
> does bbappending non-machine-specific recipes like this play well when you have
> other machines enabled in the same distro?
>

But this change will be applied only for _rpi. How is this affecting other
machines?

--
Andrei Gherzan

