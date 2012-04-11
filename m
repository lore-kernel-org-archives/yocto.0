Return-Path: <B29882@freescale.com>
Received: from db3outboundpool.messaging.microsoft.com
	(db3ehsobe006.messaging.microsoft.com [213.199.154.144])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B34CE0044D
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2012 08:43:45 -0700 (PDT)
Received: from mail30-db3-R.bigfish.com (10.3.81.251) by
	DB3EHSOBE002.bigfish.com (10.3.84.22) with Microsoft SMTP Server id
	14.1.225.23; Wed, 11 Apr 2012 15:43:44 +0000
Received: from mail30-db3 (localhost [127.0.0.1])	by mail30-db3-R.bigfish.com
	(Postfix) with ESMTP id 0D8621E04AC;
	Wed, 11 Apr 2012 15:43:44 +0000 (UTC)
X-SpamScore: -9
X-BigFish: VS-9(zz9371I1432N98dKzz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hbe9i)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail30-db3 (localhost.localdomain [127.0.0.1]) by mail30-db3
	(MessageSwitch) id 1334159022428275_13101;
	Wed, 11 Apr 2012 15:43:42 +0000 (UTC)
Received: from DB3EHSMHS011.bigfish.com (unknown [10.3.81.229])	by
	mail30-db3.bigfish.com (Postfix) with ESMTP id 584C720004A;
	Wed, 11 Apr 2012 15:43:42 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by DB3EHSMHS011.bigfish.com
	(10.3.87.111) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 11 Apr 2012 15:43:41 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.132]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.01.0355.003; Wed, 11 Apr 2012 10:43:40 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Thread-Topic: [yocto] package requirements for CentOS
Thread-Index: AQHNF/ndO4f3bMMeG0Gq7/bdb8uxsg==
Date: Wed, 11 Apr 2012 15:43:39 +0000
Message-ID: <CAEsOVNev-JtaYg9oxKMewu8tWnQL4FF9sxdDttv+VBmMbRL0og@mail.gmail.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237945186473@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237945186473@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: package requirements for CentOS
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 11 Apr 2012 15:43:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <E09115590E771F4B8CDFD84F22C1974C@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 10, 2012 at 5:13 PM, Rifenbark, Scott M
<scott.m.rifenbark@intel.com> wrote:
> I have recently added the CentOS distribution to the YP QS.=A0 The list n=
ow
> includes Ubuntu, Fedora, openSUSE, and CentOS.=A0 Further down in the man=
ual
> there are sections detailing the package requirements for Ubuntu, Fedora,
> and openSUSE.=A0 I should address CentOS.=A0 Here is the link to the sect=
ions
> currently there.=A0 Does anyone know the package requirements for CentOS?
>
>
>
> http://www.yoctoproject.org/docs/latest/yocto-project-qs/yocto-project-qs=
.html#packages

We have some idea. The biggest difference looks to be chrpath is not
available on CentOS/RHEL 5.x distro's by default. I thought the same
could be said of python2.6 so I'm not sure at the moment how we handle
that. (This is for edison so it should still be applicable)

#!/bin/sh

echo "Install packages needed to build Yocto, please wait, it may take a wh=
ile"
PKGS=3D"tetex gawk sqlite-devel vim-common redhat-lsb xz \
     m4 make wget curl ftp tar bzip2 gzip python-devel \
     unzip perl texinfo texi2html diffstat openjade zlib-devel \
     docbook-style-dsssl sed docbook-style-xsl docbook-dtds \
     docbook-utils bc glibc-devel pcre pcre-devel \
     groff linuxdoc-tools patch linuxdoc-tools cmake \
     tcl-devel gettext ncurses apr \
     SDL-devel mesa-libGL-devel mesa-libGLU-devel gnome-doc-utils \
     autoconf automake libtool xterm"
if [ "Fedora" =3D "$distro" ]; then
    PKGS=3D"$PKGS hg ccache quilt help2man perl-ExtUtils-MakeMaker connect-=
proxy"
fi
sudo yum -y groupinstall "development tools"
sudo yum -y install $PKGS

[ -r /etc/redhat-release ] && series=3D`sed -e 's,.*\([0-9]\)\..*,\1,g'
/etc/redhat-release`
# chrpath is ONLY availabe on RHEL 6.x
if [ "Redhat" =3D "$distro" -a "6" !=3D "$series" ]; then
    # check if chrpath is installed.
    if [ -z "$(rpm -qa chrpath)" ]; then
        echo "chrpath is required. Install it as follows:
        (1) download the package from
http://mirror.centos.org/centos/${series}/extras/
        (2) sudo rpm -Uhv chrpath-0.13-3.el${series}.centos.i386.rpm
            or
            sudo rpm -Uhv chrpath-0.13-3.el${series}.centos.x86_64.rpm
        Then re-run this script."
    fi
else
    sudo yum -y install chrpath
fi

-M=


