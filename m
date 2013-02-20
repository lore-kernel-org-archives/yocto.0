Return-Path: <pierre.ficheux@openwide.fr>
Received: from zimbra3.corp.accelance.fr (zimbra3.corp.accelance.fr
	[213.162.49.233])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C419E00721
	for <yocto@yoctoproject.org>; Tue, 19 Feb 2013 23:20:26 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by zimbra3.corp.accelance.fr (Postfix) with ESMTP id 6DACC28066
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2013 08:20:25 +0100 (CET)
X-Virus-Scanned: amavisd-new at zimbra3.corp.accelance.fr
Received: from zimbra3.corp.accelance.fr ([127.0.0.1])
	by localhost (zimbra3.corp.accelance.fr [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id v6AhnCCE+7wG for <yocto@yoctoproject.org>;
	Wed, 20 Feb 2013 08:20:24 +0100 (CET)
Received: from zimbra2.corp.accelance.fr (zimbra2.corp.accelance.fr
	[213.162.49.232])
	by zimbra3.corp.accelance.fr (Postfix) with ESMTP id 49A3428064
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2013 08:20:24 +0100 (CET)
Date: Wed, 20 Feb 2013 08:20:24 +0100 (CET)
From: Pierre Ficheux <pierre.ficheux@openwide.fr>
To: yocto@yoctoproject.org
Message-ID: <6628e091-f6c4-4f97-a116-bf2e31679d0f@zimbra2.corp.accelance.fr>
In-Reply-To: <20130219220611.GV3300@jama>
MIME-Version: 1.0
X-Originating-IP: [90.24.174.108]
X-Mailer: Zimbra 7.1.3_GA_3346 (ZimbraWebClient - GC24 (Linux)/7.1.3_GA_3346)
Subject: Re: Always removing status files in case of IPK
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
X-List-Received-Date: Wed, 20 Feb 2013 07:20:26 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Yes, better with

IMAGE_FEATURES +=3D "package-management"

sorry.

----- Mail original -----
> De: "Martin Jansa" <martin.jansa@gmail.com>
> =C3=80: "Pierre Ficheux" <pierre.ficheux@openwide.fr>
> Cc: yocto@yoctoproject.org
> Envoy=C3=A9: Mardi 19 F=C3=A9vrier 2013 23:06:11
> Objet: Re: [yocto] Always removing status files in case of IPK
> 
> On Tue, Feb 19, 2013 at 08:14:22PM +0100, Pierre Ficheux wrote:
> > Hi,
> > 
> > I've noticed a problem in rootfs_ipk.bbclass as status files are
> > always removed in case of using IPK (works fine with
> > RPM). Here is the small patch which fix it.
> > 
> 
> This is expected, see if in which this is:
> 
> if ${@base_contains("IMAGE_FEATURES", "package-management", "false",
> "true", d)}; then
> 
> > regards
> > 
> > diff --git a/meta/classes/rootfs_ipk.bbclass
> > b/meta/classes/rootfs_ipk.bbclass
> > index fadec4d..89c3128 100644
> > --- a/meta/classes/rootfs_ipk.bbclass
> > +++ b/meta/classes/rootfs_ipk.bbclass
> > @@ -109,9 +109,6 @@ fakeroot rootfs_ipk_do_rootfs () {
> >                         if $remove_run_postinsts; then
> >                                 update-rc.d -f -r ${IMAGE_ROOTFS}
> >                                 run-postinsts remove
> >                         fi
> > -
> > -                       # Also delete the status files
> > -                       remove_packaging_data_files
> >                 fi
> >         fi
> >         set +x
> > 
> > 
> > --
> > Pierre FICHEUX -/- CTO OW/OS4I, France -\-
> > pierre.ficheux@openwide.fr
> >                                          http://www.os4i.com
> >                                          http://www.linuxembedded.fr
> > I would love to change the world, but they won't give me the source
> > code
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> 
> --
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
> 

-- 
Pierre FICHEUX -/- CTO OW/OS4I, France -\- pierre.ficheux@openwide.fr
                                         http://www.os4i.com
                                         http://www.linuxembedded.fr
I would love to change the world, but they won't give me the source code

