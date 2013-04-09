Return-Path: <twoerner@gmail.com>
Received: from mail-wg0-f49.google.com (mail-wg0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91DE0E0146C
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2013 15:17:44 -0700 (PDT)
Received: by mail-wg0-f49.google.com with SMTP id e12so704334wgh.28
	for <yocto@yoctoproject.org>; Tue, 09 Apr 2013 15:17:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=TCMiYqiwfoFcl8U0ak6d2ijaX/p2yfRSpYitxIBcP+c=;
	b=zcnWareCjyb1Gno0aefl2h7kywVbkhocKXZ0KbuisDB4lT8KE7aQIBiThm8ZkicwLh
	R7J/BtmmfIRlr/WMNS1ItMIkYhMOqu1ywgl7iZWP7eXm9FpK0/49r2jhK5Bh3EsEsWeB
	Z/0ofQy+3+Nbb0Gv46ZOB2DuixVase2c+xUkx48nizw1DkzAcFNdo9Km/oFJQXL/JmGl
	NVC1DchwqjYonfmIovaOKMLz5t4ltZudjCJAgKNOrnelRtbpRw+BOl/NbxfSGg1X5XtM
	LLNzsGan+aKMWONsZCBk8df47gep5XdUNGwlHJlLRYObKMFjuEzf3nBvrWB1MA/Dwx7e
	JBpA==
MIME-Version: 1.0
X-Received: by 10.180.73.229 with SMTP id o5mr10091646wiv.8.1365545863783;
	Tue, 09 Apr 2013 15:17:43 -0700 (PDT)
Received: by 10.194.45.100 with HTTP; Tue, 9 Apr 2013 15:17:43 -0700 (PDT)
In-Reply-To: <1365545491.1526.5.camel@empanada>
References: <alpine.DEB.2.02.1304081135020.23038@oneiric>
	<1365469127.17697.70.camel@empanada>
	<alpine.DEB.2.02.1304090729220.4184@oneiric>
	<CAHUNapRQTMvCE=8RLNhae+sm6=VN7pP4TfbBBM0nvcCR5aTmkQ@mail.gmail.com>
	<alpine.DEB.2.02.1304091746080.4929@oneiric>
	<CAHUNapTHjYk6fWdRsk0-xLBEP5kUgnCR7Ss3TrvTuE9svgnKjQ@mail.gmail.com>
	<1365545491.1526.5.camel@empanada>
Date: Tue, 9 Apr 2013 18:17:43 -0400
Message-ID: <CAHUNapS=_W2-o7oYONSqzzFYWxH3jkdUdZ_QAokDWOaUyETbzA@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
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
X-List-Received-Date: Tue, 09 Apr 2013 22:17:44 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Apr 9, 2013 at 6:11 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> I believe I tried and couldn't reproduce it.  But if someone does
> reproduce it, please file a bug detailing the *exact* steps needed to
> reproduce.

Thanks for the update, I wasn't 100% sure if you had found the time to
give it a try or not.

I'll give it another whirl since I'm thinking about it and see where I get.

