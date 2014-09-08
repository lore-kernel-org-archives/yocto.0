Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0740E0056A; Mon,  8 Sep 2014 09:47:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.174 listed in list.dnswl.org]
Received: from mail-qc0-f174.google.com (mail-qc0-f174.google.com
	[209.85.216.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECB64E0034C
	for <yocto@yoctoproject.org>; Mon,  8 Sep 2014 09:47:21 -0700 (PDT)
Received: by mail-qc0-f174.google.com with SMTP id i17so15843620qcy.33
	for <yocto@yoctoproject.org>; Mon, 08 Sep 2014 09:47:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=VWosYW+2LP6ThQPpUEUeshRCV8bhQRgwXgmTEIBDavU=;
	b=Ls5g18X0iXUzpYOS7px3bfuGH7+y8hgxA90NjYwVzleU1+E2CqLVEueGX2qHaWygi1
	hKCWz8JVjXpRDQvlFm91mqywuyuiaZOhO4HmS9EW1eDzLFh2h7Ev/x/JbUrCTyZ2lrez
	NMslTE8BOVSDOm+eP5fBN237Rdb/+Xs2xzOfnMLarNP3hsilED5XfA2SXg9G2JD2Bxpp
	kgxFf3yjr8ndQ9wes2owxGLF9IlXAD+fyrPHHRIP5Vkji6n9ANsEfLfaFGbBx94+2qt7
	JJVvEeQnM1piKYHA2IHEnBlWGA5IN6L8KXL2/wcKJ7f2GDzl4r6rBFAX1nTioDo46en4
	2dbw==
X-Gm-Message-State: ALoCoQmhpQrtHhxU5mbwVtw9any7c/6SkXzXBTWtuO0LFwVl2CTDLJ2i9GbQLFiRJrN1aSVLHn5k
X-Received: by 10.229.219.138 with SMTP id hu10mr42910646qcb.5.1410194840119; 
	Mon, 08 Sep 2014 09:47:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.29.183 with HTTP; Mon, 8 Sep 2014 09:47:00 -0700 (PDT)
In-Reply-To: <CAP3RZojti2ziEG03onE4q0xOT2Mtn2WtDJ7SfXOryaYr4iRNtg@mail.gmail.com>
References: <CAP3RZojti2ziEG03onE4q0xOT2Mtn2WtDJ7SfXOryaYr4iRNtg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 8 Sep 2014 17:47:00 +0100
Message-ID: <CAJTo0LawxP5wq+WeLY2-1MERGBwSogpTMM2pipEVAhXkqYB6zQ@mail.gmail.com>
To: jags gediya <jags.gediya@gmail.com>
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: package or library for NAT traversal in yocto
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
X-List-Received-Date: Mon, 08 Sep 2014 16:47:22 -0000
Content-Type: text/plain; charset=UTF-8

On 8 September 2014 17:36, jags gediya <jags.gediya@gmail.com> wrote:
> We are using yocto for custom device which will communicate with the
> other mobile devices over the internet. For that we need some package
> which can be used to traverse behind the NAT. like libjingle, XMPP
> etc.
>
> In yocto, is there any package available for this kind of functionality?

libnice?

http://layers.openembedded.org/layerindex/recipe/1108/

Ross

