Return-Path: <jonathan.austin@arm.com>
Received: from service87.mimecast.com (service87.mimecast.com [91.220.42.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1BE2E00AE9
	for <yocto@yoctoproject.org>; Mon, 24 Mar 2014 09:10:06 -0700 (PDT)
Received: from cam-owa2.Emea.Arm.com (fw-tnat.cambridge.arm.com
	[217.140.96.21]) by service87.mimecast.com;
	Mon, 24 Mar 2014 16:10:01 +0000
Received: from [10.2.202.23] ([10.1.255.212]) by cam-owa2.Emea.Arm.com with
	Microsoft SMTPSVC(6.0.3790.3959); Mon, 24 Mar 2014 16:10:14 +0000
Message-ID: <533058C1.3000102@arm.com>
Date: Mon, 24 Mar 2014 16:09:37 +0000
From: Jonathan Austin <jonathan.austin@arm.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	openembedded-core <openembedded-core@lists.openembedded.org>,
	yocto <yocto@yoctoproject.org>
References: <1395676843.24890.7.camel@ted>
In-Reply-To: <1395676843.24890.7.camel@ted>
X-OriginalArrivalTime: 24 Mar 2014 16:10:14.0106 (UTC)
	FILETIME=[8A21E3A0:01CF477B]
X-MC-Unique: 114032416100111801
Subject: Re: Features in Yocto Project 1.7
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
X-List-Received-Date: Mon, 24 Mar 2014 16:10:08 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi Richard,

On 24/03/14 16:00, Richard Purdie wrote:
> As development on 1.6 finishes up, its time to think about what we
> should be doing in the 1.7 cycle.
>
> I think from my perspective, in 1.7 I'd like to see us looking at
> "Developer Workflow". Its a generic topic which I think covered multiple
> areas (in no particular order):
>
> * the ADT/SDK and how it intergrates into the rest of the system
> * toaster
> * python devshell
> * exteralsrc.bbclass
> * memory resident bitbake
> * how a standalone app developer might build an image
> * locked sstate

Is there a wiki page that collates the enhancement requests that have=20
lead to this list? For example, if I want to discuss the issue of "how a=20
standalone app developer might build an image" (I do!) then where should=20
I go? On the list? Bugzilla for 'standalone image' doesn't appear to=20
have an item for this (unless I'm pounding my keypad incorrectly for=20
Bugzilla).

Cheers,

Jonny
>
> and probably more I'm forgetting.
>
> If anyone does have things they plan to work on, or ideas for things
> that should be worked on, please do file enhancement requests in the
> bugzilla:
>
> https://bugzilla.yoctoproject.org/
>
> Cheers,
>
> Richard
>
>
>



