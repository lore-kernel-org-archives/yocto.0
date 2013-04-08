Return-Path: <sean.liming@annabooks.com>
Received: from mail32c40.carrierzone.com (mail32c40.carrierzone.com
	[209.235.156.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F307CE00499
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2013 14:49:45 -0700 (PDT)
X-Authenticated-User: sean.liming.annabooks.com
Received: from Sean7 (cpe-76-95-171-22.socal.res.rr.com [76.95.171.22])
	(authenticated bits=0)
	by mail32c40.carrierzone.com (8.13.6/8.13.1) with ESMTP id
	r38LnWtO023291; Mon, 8 Apr 2013 21:49:35 +0000
From: "Sean Liming" <sean.liming@annabooks.com>
To: "'Trevor Woerner'" <twoerner@gmail.com>
References: <36ED13F3654AE54CA763E6821D93A571104C91C9@szxeml534-mbx.china.huawei.com>	<000301ce3185$ab049a20$010dce60$@annabooks.com>
	<CAHUNapRQ+hWo7P2eXUYNof=MsqJVDRY2HE4KV8-=dOeUro=scQ@mail.gmail.com>
In-Reply-To: <CAHUNapRQ+hWo7P2eXUYNof=MsqJVDRY2HE4KV8-=dOeUro=scQ@mail.gmail.com>
Date: Mon, 8 Apr 2013 14:49:31 -0700
Message-ID: <000001ce34a2$f584a3e0$e08deba0$@annabooks.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQHwnVdAd9P1yPtTIpCJsNrInLVdjQJB3h5BAi3R+XmYZIz8kA==
X-CSC: 0
X-CHA: v=2.0 cv=OZQv+GvY c=1 sm=1 a=RqNIojzclRO/fVsPhA7IgQ==:17
	a=Jxlpq9rTYUsA:10 a=_DgR7O7FQkkA:10 a=kj9zAlcOel0A:10 a=IjdlZ_XXAAAA:8
	a=hp-o6XMKCZ4A:10 a=pGLkceISAAAA:8 a=iGHA9ds3AAAA:8
	a=8BMPEu9vC_X-f1RgA7QA:9 a=CjuIK1q_8ugA:10 a=MSl-tDqOz04A:10
	a=XDKM753qmDAA:10 a=PAfwrr6pMpkA:10 a=RqNIojzclRO/fVsPhA7IgQ==:117
X-CTCH-RefID: str=0001.0A020203.51633B6F.0122, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
X-CTCH-VOD: Unknown
X-CTCH-Spam: Unknown
X-CTCH-Score: 0.000
X-CTCH-Rules: 
X-CTCH-Flags: 0
X-CTCH-ScoreCust: 0.000
Cc: 'Sanil kumar' <sanil.kumar@huawei.com>, yocto@yoctoproject.org
Subject: Re: RFC: Post build configuration
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
X-List-Received-Date: Mon, 08 Apr 2013 21:49:46 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-us

> -----Original Message-----
> From: Trevor Woerner [mailto:twoerner@gmail.com]
> Sent: Monday, April 08, 2013 1:28 PM
> To: Sean Liming
> Cc: Venkata ramana gollamudi; yocto@yoctoproject.org; Sanil kumar
> Subject: Re: [yocto] RFC: Post build configuration
> 
> On Thu, Apr 4, 2013 at 6:42 PM, Sean Liming <sean.liming@annabooks.com>
> wrote:
> > Why post-build instead of pre-build?
> 
> The idea is that you have one build, and you are manufacturing 5000
devices.
> 
> So you take this one build and load it on each of your identical devices
which
> you then sell to your customers. But if each device you sell is supposed
to
> have a unique piece of configuration information, you don't want to have
to
> create 5000 builds, one for each device, do you? In other words, this
unique
> data shouldn't be part of the build, you wouldn't want to have to start a
new
> build just because you want to change this unique data?
> 
> Ideally you would create one build. Then, just before loading this build
onto a
> given device, you do something to set this unique piece of information
(i.e.
> post-build) for this one device, then you repeat for the remaining 4999
> devices.
> 
> The assumption here is that builds are "expensive" (i.e. slow) while post-
> build configuration would be "cheap" (i.e. quick, easy, fast).

Excellent. That makes a lot of sense. Is this post-build utility an active
project for the Yocto Project or is it just getting started?  Is it a menu
driven item / something that we can include via a layer?

Regards,

Sean Liming


