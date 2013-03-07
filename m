Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-scoter.atl.sa.earthlink.net
	(elasmtp-scoter.atl.sa.earthlink.net [209.86.89.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3159EE00741
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2013 14:29:21 -0800 (PST)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=aSNhI9hOrtYkJI/iPqvv9R3X8jWAup2ANInoTljRTIyMoEnG6pONu/R6wNO2U59P;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:Thread-Index:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-scoter.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1UDjJQ-0007RM-9V; Thu, 07 Mar 2013 17:29:20 -0500
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Martin Jansa'" <martin.jansa@gmail.com>
References: <74C70EB8A6B644C890B30B2F4B3C9415@PAULD>
	<20130307104051.GH32228@jama.dyndns-home.com>
	<96E98E10F7094D32B371FD84AFF0FFFC@PAULD>
	<20130307182933.GS32228@jama.dyndns-home.com>
In-Reply-To: <20130307182933.GS32228@jama.dyndns-home.com>
Date: Thu, 7 Mar 2013 14:29:08 -0800
Message-ID: <50BB56BA2C44400C9B6A31B0C2641BD2@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
Thread-Index: Ac4bYbrL/NWrgxs0QgqhrTnnW0KolgAHONMg
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688a409ddb7f0178573e94ca129271c4952350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Cc: yocto@yoctoproject.org
Subject: Re: Samba server?
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
X-List-Received-Date: Thu, 07 Mar 2013 22:29:21 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Martin Jansa [mailto:martin.jansa@gmail.com] 
> 
> No, adding extra layer is pretty basic operation and should 
> be properly
> documented. Can you send some pointers what have you read 
> about adding a
> layer and what wasn't easy to understand?

How to theoretically add a layer was easy enough to understand, but when it
failed to work, I came to a dead end.

I'm trying to make a basic non-GUI image based on the Atom cedartrail-nopvr
machine, plus Samba, so I began with the following items in BBLAYERS:

  meta
  meta-yocto
  meta-yocto-bsp
  meta-intel
  meta-intel/meta-cedartrail

and I built core-image-base. That worked fine, but of course it had no Samba
in it, nor is Samba anywhere to be found within the Yocto stuff. So I
downloaded meta-openembedded from their GIT server, which I know from my
Gumstix experience contains Samba in its meta-oe layer, added
meta-openembedded/meta-oe to the end of BBLAYERS, and tried bitbaking both
core-image-base and samba. I quickly got the following error:


ERROR: ParseError at
/home/pauld/yocto-atom/poky-danny-8.0/meta-openembedded/meta-oe/recipes-grap
hics/ttf-fonts/ttf.inc:12: Could not inherit file classes/fontcache.bbclass


There is no fontcache.bbclass anywhere within meta-openembedded, or the
Yocto stuff, but looking through their GIT repository I found it exists
within openembedded-core, in the meta layer. So I downloaded that, and added
openembedded-core/meta to BBLAYERS before meta-openembedded/meta-oe and
tried again. It got past the above error, but this time I got the following
shell script error:


ERROR: ExpansionError during parsing
/home/pauld/yocto-atom/poky-danny-8.0/meta-openembedded/meta-oe/recipes-supp
ort/maliit/maliit-framework_git.bb: Failure expanding variable
gtk_immodule_cache_postinst: ExpansionError: Failure expanding variable
gtk_immodule_cache_postinst, expression was if [ "x$D" != "x" ]; then
    for maj_ver in 2 3; do
        if [ -x $D/usr/bin/gtk-query-immodules-$maj_ver.0 ]; then
            IMFILES=$(ls $D/usr/lib/gtk-$maj_ver.0/*/immodules/*.so)
            ${@qemu_run_binary(d, '$D',
'/usr/bin/gtk-query-immodules-$maj_ver.0')} \
                $IMFILES > $D/etc/gtk-$maj_ver.0/gtk.immodules 2>/dev/null
&&
                sed -i -e "s:$D::" $D/etc/gtk-$maj_ver.0/gtk.immodules

            [ $? -ne 0 ] && exit 1
        fi
    done

    exit 0
fi
if [ ! -z `which gtk-query-immodules-2.0` ]; then
    gtk-query-immodules-2.0 > /etc/gtk-2.0/gtk.immodules
fi
if [ ! -z `which gtk-query-immodules-3.0` ]; then
    gtk-query-immodules-3.0 > /etc/gtk-3.0/gtk.immodules
fi
 which triggered exception NameError: name 'qemu_run_binary' is not defined


I'm sure this e-mail mangled the above due to line wrapping, but I doubt
anyone really needs to know what's going on in that shell script, and the
final line is the only meaningful one. I suspect that the meta-oe layer is
dependent on yet another layer that defines this 'qemu_run_binary' function,
and that even though I've got all of openmbedded-core and meta-openembedded
under my poky-danny-8.0 directory, bitbake only parses those parts that are
mentioned in BBLAYERS, relying upon the user to deal with inter-layer
dependencies.

Perhaps I could grep a bazillion files looking for qemu_run_binary, but I'm
worried that I'm wasting my time down a blind alley. Is pulling in somebody
else's layer (in this case an OpenEmbedded layer into a Yocto system)
something that's supposed to work, or does it only work if it's been tried
and debugged by the experts who create these things in the first place?

(And why doesn't Yocto include Samba anyway? It seems more of a common
standard package than a lot of the stuff I see included.)

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


