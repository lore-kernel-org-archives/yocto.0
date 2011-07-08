Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id E8AC74C800A9
	for <yocto@yoctoproject.org>; Thu,  7 Jul 2011 19:09:20 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6809FOt013108;
	Fri, 8 Jul 2011 01:09:15 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 12733-08; Fri,  8 Jul 2011 01:09:11 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p68097dh013102
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 8 Jul 2011 01:09:08 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <darren.hart@intel.com>
In-Reply-To: <4E164802.4000206@intel.com>
References: <CAPhnLPAr4z9CagpCnWo=oyEHFzRQTSbhga8Zm5HnF3dKOX11_w@mail.gmail.com>
	<1310073373.20015.847.camel@rex>  <4E164802.4000206@intel.com>
Date: Fri, 08 Jul 2011 01:08:29 +0100
Message-ID: <1310083709.20015.863.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org, Saul Wold <saul.wold@intel.com>
Subject: Re: Details on Bug #963 kernel tarball corruption.
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
X-List-Received-Date: Fri, 08 Jul 2011 00:09:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-07-07 at 16:57 -0700, Darren Hart wrote:
> On 07/07/2011 02:16 PM, Richard Purdie wrote:
> > On Thu, 2011-07-07 at 13:34 -0700, Flanagan, Elizabeth wrote:
> > diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
> > index f3bc793..7954f66 100644
> > --- a/bitbake/lib/bb/fetch2/git.py
> > +++ b/bitbake/lib/bb/fetch2/git.py
> > @@ -170,7 +170,7 @@ class Git(FetchMethod):
> >  
> >          # If the repo still doesn't exist, fallback to cloning it
> >          if not os.path.exists(ud.clonedir):
> > -            clone_cmd = "%s clone --bare %s://%s%s%s %s" % \
> > +            clone_cmd = "%s clone --bare --mirror %s://%s%s%s %s" % \
> 
> 
> --mirror implies --bare, so:
> -            clone_cmd = "%s clone --bare %s://%s%s%s %s" % \
> +            clone_cmd = "%s clone --mirror %s://%s%s%s %s" % \
> 
> should be adequate.

Right, I left it in as it makes it clearer to anyone looking at the
command that we're really sure we want a bare clone...

Cheers,

Richard


