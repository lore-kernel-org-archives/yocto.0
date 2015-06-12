Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39239E009C8; Fri, 12 Jun 2015 09:20:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS,WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2F91E0086D
	for <yocto@yoctoproject.org>; Fri, 12 Jun 2015 09:20:20 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Z3Rgm-0007gv-Vq
	for yocto@yoctoproject.org; Fri, 12 Jun 2015 18:20:17 +0200
Received: from ppp-2-86-141-63.home.otenet.gr ([2.86.141.63])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 12 Jun 2015 18:20:16 +0200
Received: from gmane by ppp-2-86-141-63.home.otenet.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 12 Jun 2015 18:20:16 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Fri, 12 Jun 2015 19:19:51 +0300
Message-ID: <557B06A7.6070300@reliableembeddedsystems.com>
References: <557896F3.2040207@mlbassoc.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: ppp-2-86-141-63.home.otenet.gr
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
In-Reply-To: <557896F3.2040207@mlbassoc.com>
Subject: Re: Strange sstate problem
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
X-List-Received-Date: Fri, 12 Jun 2015 16:20:26 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Hi,

On 06/10/2015 10:58 PM, Gary Thomas wrote:
> I'm building for two similar targets and sharing sstate between
> them.  Actually, I build for target A and use that sstate cache
> in my SSTATE_MIRRORS for target B.

If I understand correctly what should happen, then SSTATE_MIRRORS should
point to some build machine, which populates SSTATE and other machines
pull from it.

something like:

SSTATE_MIRRORS ?= "file:///nfs/mount/sstate/PATH"

where PATH will be substituted.

So it looks like you do the right thing.

Is the sequence you do the following?

1) Build for target A (which is the SSTATE_MIRROR for target B)
2) After the build finished you build for target B using the shared
sstate from target A

> 
> If I try to build target B from scratch, i.e. wipe out most
> everything from my build tree:
>   % mv cache sstate-cache tmp old2; rm -fr old&
> I also have a PR server for each target - in local.conf:
>   PRSERV_HOST = "localhost:0"

I think that if you use a shared sstate whoever populates the sstate
should also use a central pr server.

something like:

bitbake-prserv --host <server_ip> --port <port> --start on one machine
and instead of localhost:0 the <server_ip>:<port>

In your case it should not matter, since only target A populates the
shared sstate, but you can give it a try.


> 
> When I build in target B, I'm getting a ton of QA errors, basically
> one for every package selected, e.g.
>   ERROR: QA Issue: Package version for package fsl-alsa-plugins went
> backwards which would break package feeds from (0:1.0.25-r0.2 to
> 0:1.0.25-r0.0) [version-going-backwards]
> 
> What could be going on here?
> 
> n.b. I'm using a fairly recent Poky/Yocto master
> (a05663bfa10352fd5af6ca9a9d7b323c1c099f35)
> 

Regards,

Robert

..."Software is getting slower more rapidly than hardware becomes
faster." - Niklaus Wirth, who attributed it to Martin Reiser.

My public pgp key is available,at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



