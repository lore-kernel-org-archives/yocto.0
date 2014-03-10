Return-Path: <Valentin.Cobelea@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 1870FE00AA2
	for <yocto@yoctoproject.org>; Mon, 10 Mar 2014 04:05:15 -0700 (PDT)
Received: from localhost.enea.se (192.168.14.202) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.158.1;
	Mon, 10 Mar 2014 12:05:08 +0100
Message-ID: <531D9C64.4010806@enea.com>
Date: Mon, 10 Mar 2014 13:05:08 +0200
From: Vali Cobelea <valentin.cobelea@enea.com>
Organization: ENEA
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: Josef Holzmayr <jholzmayr@the-exact-steps.net>, <yocto@yoctoproject.org>
References: <1941676061.151463.1394449148860.open-xchange@email.1und1.de>
In-Reply-To: <1941676061.151463.1394449148860.open-xchange@email.1und1.de>
X-Originating-IP: [192.168.14.202]
Subject: Re: [RFC] Blubber, a tool to set up yocto/poky projects easily
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
X-List-Received-Date: Mon, 10 Mar 2014 11:05:16 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Hi Josef,

Looks ok at a first look, but my first suggestion would be to start 
using the "is" operator instead of "==" when it comes to comparing strings.
Otherwise using your way with "==" will crash if any of the variables 
(those "sys.argv[]") are None (void).


Best regards,
Vali


On 03/10/2014 12:59 PM, Josef Holzmayr wrote:
> Howdy!
>
> After looking more and more into yocto, one of the main issues for me is the
> process to set up a project properly, including all layers and conf options.
> Especially those which would be needed to set exactly the same way again and
> again every time somebody needs to reproduce a build.
>
> So I've come up with an idea: a small tool that can handle these things for me.
> And here it is for your enjoyment/use/abuse/comments:
>
> https://github.com/LetoThe2nd/blubber
>
> Short excerpt from the README:
>
> But be warned first. Blubber is still in pre-pre-pre-alpha stage (more like a
> proof of concept), and has the following defects/bugs/non-features:
> - Horribly bad python code (Yes, its really that bad. Blame me, its my first
> attempt to use that language)
> - No error checking whatsoever
> - Largely incomplete feature set
> - Did I already mention the utterly bad code?
> - Only supports git sources so far.
>
> Despite that, it can already do some magic:
> - Getting poky and layers from git, and checking out branches/tags/commits if
> needed
> - Accordingly setting up build/conf/bblayers.conf
> - Setting up build/conf/local.conf with a set of predefined options
> - Running arbitrary commands with proper shell setup (source-ed
> poky/oe-init-build-env) for the configured project.
>
> If anybody has feedback, just scream loudly. Or if anybody knows of a better
> solution making it all obsolete, please also scream. Thanks!
>
> Leto


