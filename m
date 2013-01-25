Return-Path: <daniel.schnel.extern@ifm.com>
Received: from eu3sys201aog102.obsmtp.com (eu3sys201aog102.obsmtp.com
	[207.126.148.90])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 35C04E014F1
	for <yocto@yoctoproject.org>; Fri, 25 Jan 2013 00:48:58 -0800 (PST)
Received: from deesdmz226.dmz.es.de.ifm ([194.156.152.226]) (using TLSv1) by
	eu3sys201aob102.postini.com ([207.126.154.11]) with SMTP
	ID DSNKUQJG+VBrXfJl8ceNDT9DxRuY47dI/TMp@postini.com;
	Fri, 25 Jan 2013 08:48:59 UTC
Received: from deesdmz226.dmz.es.de.ifm (localhost.localdomain [127.0.0.1])
	by deesdmz226.dmz.es.de.ifm (Postfix) with ESMTP id 647A519F381
	for <yocto@yoctoproject.org>; Fri, 25 Jan 2013 09:48:57 +0100 (CET)
In-Reply-To: <alpine.DEB.2.02.1301241412340.6204@oneiric>
References: <OFBE0EFB03.95C8CD96-ONC1257AFD.00580557-C1257AFD.00584DE3@ifm-electronic.com>
	<alpine.DEB.2.02.1301241412340.6204@oneiric>
X-KeepSent: 78A692B9:437116F7-C1257AFE:00288F32;
 type=4; name=$KeepSent
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-Mailer: Lotus Notes Release 8.5.2FP3 July 11, 2011
From: daniel.schnel.extern@ifm.com
Message-ID: <OF78A692B9.437116F7-ONC1257AFE.00288F32-C1257AFE.0030603B@ifm-electronic.com>
Date: Fri, 25 Jan 2013 09:48:23 +0100
X-MIMETrack: Serialize by Router on deesifmweb04/ifmwww(Release 8.5.2HF17 |
	August 31, 2010) at 25.01.2013 09:48:56
MIME-Version: 1.0
X-SafeGuard_MailGateway: Version: 5.80.2.12968 SGMG_SOPHOS Date:
	20130125084857Z
Cc: yocto@yoctoproject.org
Subject: Antwort: Re: PREMIRRORS_prepend & friends
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
X-List-Received-Date: Fri, 25 Jan 2013 08:48:59 -0000
Content-type: text/plain; charset=US-ASCII

Hi,




Von:	"Robert P. J. Day" <rpjday@crashcourse.ca>
An:	daniel.schnel.extern@ifm.com
Kopie:	yocto@yoctoproject.org
Datum:	24.01.2013 21:47
Betreff:	Re: [yocto] PREMIRRORS_prepend & friends
Gesendet von:	yocto-bounces@yoctoproject.org



On Thu, 24 Jan 2013, daniel.schnel.extern@ifm.com wrote:

>
> Hi,
>
> after hours of trying and googling I finally make my first coming out
here
> on this list to get some help with PREMIRRORS_prepend & friends.So please
> be friendly ;)
>
> I want to setup local mirrors for our yocto build for reproducability
> purposes. I am using ELDK-5.2.1 which is based on yocto-1.2
>
> I have made the following settings in my local.conf:
>
> PREMIRRORS_prepend = "\
>      git://.*/.*   git://git@dettlx79: \n \
>      ftp://.*/.* http://dettlx79/sources \n \
>      http://.*/.* http://dettlx79/sources \n \
>      https://.*/.* http://dettlx79/sources \n \"
>
>
> BB_FETCH_PREMIRRORONLY = "1"

  ... snip ...

i documented how i set up my own local mirror here:

http://www.crashcourse.ca/wiki/index.php/OE_Creating_your_%22own_mirror%22

it's all based on eventually storing tarballs of the sources, no
matter how you fetched the original sources.  is that what you're
after for reproducibility?



We want to guarantee even after +5 years or so that the bits of our
binaries are the same whenever we hit the build trigger. In my eyes this
can only be achieved if the sources are archived via revision control
system, because otherwise we would be dependent on archives and their
filename always staying unmodified over time. This is a policy outside of
our realm and so a revision control system would get this straight.

I could now use a naive approach and do

cd downloads/ && git init && git commit -a -m "all files committed"

But this isn't optimal as there are already git repositories inside
download2/git2/ which seems to originate from downloads/git2_*.tar.gz
archives, no ?

So far I have successfully built my image via downloading the sources via
internet.

From here these are the steps I want to try for the PREMIRRORS:

1.) provide the exact downloads/ directory via http:// only (not via
files://)
2.) provide archives only via http but git repositories via in-house
mirrored git repositories and git:// protocol (don't use git archives like
git2_...tar.gz from the http:// mirror)

The latter I have not been able to manage. Any ideas if this scenario can
be achieved ? And can you shed some light into the yocto approach of
archiving external git repos as tar.gz archives ?

Regards,
Daniel Schnell.



