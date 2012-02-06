Return-Path: <David.Nystrom@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 14FF1E0123F
	for <yocto@yoctoproject.org>; Sun,  5 Feb 2012 23:53:23 -0800 (PST)
Received: from [172.16.140.120] (172.16.140.120) by SESTOEX03.enea.se
	(172.21.1.38) with Microsoft SMTP Server (TLS) id 14.2.247.3;
	Mon, 6 Feb 2012 08:53:21 +0100
Message-ID: <4F2F86F0.7020905@enea.com>
Date: Mon, 6 Feb 2012 08:53:20 +0100
From: =?ISO-8859-1?Q?David_Nystr=F6m?= <david.nystrom@enea.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111229 Thunderbird/9.0
MIME-Version: 1.0
To: Scott Garman <scott.a.garman@intel.com>
References: <4F2CB95F.6040509@intel.com>
In-Reply-To: <4F2CB95F.6040509@intel.com>
X-Originating-IP: [172.16.140.120]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Trying to re-use sstate.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 06 Feb 2012 07:53:24 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 02/04/2012 05:51 AM, Scott Garman wrote:
> Hello,
>
> I'm trying to re-use the sstate from one build directory and move it to
> another. It's not working - bitbake is rebuilding *everything*.
>
> My hunch is the reason for this is because bblayers.conf must differ
> between the two build directories, because it uses full paths to the
> layer directories.
>
> By default, when you source oe-init-build-env for the first time, it
> generates a bblayers.conf file with full paths to the default layers,
> meta and meta-yocto.
>
> I thought the point of sstate was that I could copy it between build
> directories - or even different hosts - and save myself the effort of
> rebuilding everything if the remaining metadata was the same?
>
> Scott
>
We have the same issue,

I tried to setup a buildbot to warm up sstate caches over night,
and let developers use this common sstate to speed up build times.
Epic fail, since paths usually are not consistent.
And it seems you can't even fake  an "identical path" with symlinks
either, bitbake detects the symlink and rebuilds everything.

The sstate cache needs improvement.
Would this issue be considered a bug or a feature request ?,
Are there any requests on how this should be solved ?

Br,
David

