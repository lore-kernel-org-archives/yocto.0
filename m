Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16210E014DB
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2013 06:10:06 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1UPumo-0000gw-Jq
	for yocto@yoctoproject.org; Wed, 10 Apr 2013 15:10:02 +0200
Received: from gate02.msc-ge.com ([91.201.100.98])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2013 15:10:02 +0200
Received: from achim.kanert by gate02.msc-ge.com with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2013 15:10:02 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Achim Kanert <achim.kanert@rwth-aachen.de>
Date: Wed, 10 Apr 2013 12:39:03 +0000 (UTC)
Message-ID: <loom.20130410T143813-208@post.gmane.org>
References: <1711946.6ebLgJzAjK@fedora-fisso> <51263B0E.6020209@mlbassoc.com>
	<3061185.qjNdBeNxOi@fedora-fisso>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 91.201.100.98 (Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1;
	Trident/4.0; .NET CLR 2.0.50727; .NET CLR 1.1.4322;
	.NET CLR 3.0.04506.30; .NET4.0E; .NET CLR 3.0.4506.2152;
	.NET CLR 3.5.30729; MS-RTC LM 8; .NET4.0C))
Subject: Re: core-image-sato + firefox for pandaboard
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
X-List-Received-Date: Wed, 10 Apr 2013 13:10:06 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Davide Soldan <davide.soldan@...> writes:

> 
> In data giovedì 21 febbraio 2013 08:19:42, Gary Thomas ha scritto:
> > On 2013-02-21 07:52, Davide Soldan wrote:
> > > Hi to all!
> > > I'm new in building images with yocto for my pandaboard. Trying to 
build core-image-sato
> (http://maniacbug.wordpress.com/2012/08/03/pandayocto/) all works fine, 
but now I want to add some
> packages to this image.
> > > So proceeding like mentioned here
> https://lists.yoctoproject.org/pipermail/yocto/2012-May/009175.html, 
downloading
> meta-browser layer and adding this layer to build/conf/bblayers.conf and 
adding the package firefox to
> conf/build/local.conf I've got this error:
> > >
> > > ERROR: No recipes available for:
> > >    /home/davide/yocto/poky-denzil-7.0/meta-browser/recipes-
gnome/gnome-settings-daemon/gnome-settings-daemon_2.32.1.bbappend
> > >    /home/davide/yocto/poky-denzil-7.0/meta-browser/recipes-
graphics/libxi/libxi_1.6.1.bbappend
> > >    /home/davide/yocto/poky-denzil-7.0/meta-browser/recipes-
support/nspr/nspr_4.9.4.bbappend
> > >
> > > So I found, for example, gnome-settings-daemon under meta-
openebedded (dependency declared in the
> README file of meta-browser). Adding the layer "meta-openembedded/meta-
gnome" to
> build/conf/bblayers.conf to satisfy the gnome-settings-daemon dependency 
I've got the following
> different error:
> > >
> > > NOTE: Error expanding variable populate_packages
> > > NOTE: Error during finalise of /home/davide/yocto/poky-denzil-
7.0/meta-openembedded/meta-gnome/recipes-support/goffice/goffice_0.8.17.bb
> > > ERROR: Unable to parse /home/davide/yocto/poky-denzil-7.0/meta-
openembedded/meta-gnome/recipes-support/goffice/goffice_0.8.17.bb
> > 
> > I was able to build this combo (master, not denzil) by only importing
> > the necessary recipes, not all of meta-gnome.  I just put them in a
> > local layer.
> > 
> > n.b. FireFox runs OK, but IMO [Google] Chromium is much snappier on 
the PandaBoard.
> > You should be able to build it using the same setup.
> > 
> > 
> Solved the problem: I downloaded the yocto denzil release from the 
website (tar.gz file) but the layers
> meta-browser/openembedded-come/meta-openembedded was from git...so the 
branch of this latest
> layers was master and not denzil. checking out the correct branch solved 
the problem!
> Thanks!
> 


Hi,
I am new to yocto and have the same problem.
Can you please shortly describe which recipes you added.

Regards,
Achim Kanert


