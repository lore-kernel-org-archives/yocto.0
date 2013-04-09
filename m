Return-Path: <twoerner@gmail.com>
Received: from mail-we0-f174.google.com (mail-we0-f174.google.com
	[74.125.82.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD1D2E01460
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2013 14:10:25 -0700 (PDT)
Received: by mail-we0-f174.google.com with SMTP id u12so5743521wey.19
	for <yocto@yoctoproject.org>; Tue, 09 Apr 2013 14:10:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=lBg67+BnT3C+GW3uiDpHGDAWHFTqLUh84BijgEbejn8=;
	b=jX3yBVtLXOhBmS6U0gT6u+MiSaTxGaTrxUlN7BAQxmEFzAA7rplyHzWu+1dH02GDUN
	U8b043MA4VVRnPkfNZtl5aW2Ne9jrATEKOZFBsi50bFk2n+XDlIKvwR06MR20k/TzRZD
	kInmHTXw0pc11zaR9pL/ywHo09OljgwhULXtMCiIq8huI1MZ5eDMtAVeufbkBQBKs8eC
	SDIJiA41mkXHZQyW5ncD3DHNNI6r6uyYiDMQyqw0P59mKiBQYlRu7JdrKeR+ucXQTxe4
	xO/QhyvKDl/EU9+xspc4a2aRQ6yuLqHRykYTeniMA39HqvJ1AQAGmLxytm743vAyA3r4
	e87w==
MIME-Version: 1.0
X-Received: by 10.180.182.36 with SMTP id eb4mr3107111wic.8.1365541824423;
	Tue, 09 Apr 2013 14:10:24 -0700 (PDT)
Received: by 10.194.45.100 with HTTP; Tue, 9 Apr 2013 14:10:24 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1304090729220.4184@oneiric>
References: <alpine.DEB.2.02.1304081135020.23038@oneiric>
	<1365469127.17697.70.camel@empanada>
	<alpine.DEB.2.02.1304090729220.4184@oneiric>
Date: Tue, 9 Apr 2013 17:10:24 -0400
Message-ID: <CAHUNapRQTMvCE=8RLNhae+sm6=VN7pP4TfbBBM0nvcCR5aTmkQ@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: working my way through the kernel hands-on labs finally
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
X-List-Received-Date: Tue, 09 Apr 2013 21:10:26 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Robert,

Since you're working your way through the labs, I was wondering if
you'd be interested in testing something out for me? When I went
through these labs I had set my PACKAGE_CLASSES to package_ipk instead
of the default package_rpm. While doing so I had discovered a bug
which I reported, but nobody else (to my knowledge) tried to reproduce
the issue. Would you mind working through the labs with package_ipk
and seeing if there are some things that don't work as advertised?

Best regards,
    Trevor

