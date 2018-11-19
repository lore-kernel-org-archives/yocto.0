Return-Path: <bas@basmevissen.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A1A1E00C3B; Mon, 19 Nov 2018 02:50:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 353 seconds by postgrey-1.32 at yocto-www;
	Mon, 19 Nov 2018 02:50:18 PST
Received: from hosting.emcodev.net (hosting.emcodev.net [178.18.92.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFCFCE00872
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2018 02:50:18 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id 861AE12AE02;
	Mon, 19 Nov 2018 11:44:24 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at hosting.emcodev.net
Received: from hosting.emcodev.net ([127.0.0.1])
	by localhost (hosting.emcodev.net [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id nGgcXAWjgsV1; Mon, 19 Nov 2018 11:44:23 +0100 (CET)
Received: from emcodev.nl (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id B01F712B9BF;
	Mon, 19 Nov 2018 11:44:23 +0100 (CET)
MIME-Version: 1.0
Date: Mon, 19 Nov 2018 11:44:23 +0100
From: Bas Mevissen <bas@basmevissen.nl>
To: Armin Kuster <akuster808@gmail.com>
In-Reply-To: <1542596900-12856-1-git-send-email-akuster808@gmail.com>
References: <1542596900-12856-1-git-send-email-akuster808@gmail.com>
Message-ID: <713febab94e0f1a734160f063c840826@basmevissen.nl>
X-Sender: bas@basmevissen.nl
User-Agent: Roundcube Webmail/1.3.7
X-Mailman-Approved-At: Mon, 19 Nov 2018 05:39:16 -0800
Cc: yocto@yoctoproject.org
Subject: Re: [yocto-docs][thud][v2][PATCH] ref-system-requirements: sync with thud poky.conf
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
X-List-Received-Date: Mon, 19 Nov 2018 10:50:20 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: quoted-printable

On 2018-11-19 04:08, Armin Kuster wrote:
> poky.conf
>     ubuntu-16.04
>     ubuntu-16.10
>     ubuntu-17.04
>     fedora-26

Support for Fedora 26 has ended. I've been using Fedora 27 and 28 for=20
Sumo and they are fine for me. I can do some tests on Thud. However, I=20
cannot do the full 2TB tests that are suggested at=20
https://wiki.yoctoproject.org/wiki/Distribution_Support and=20
https://wiki.yoctoproject.org/wiki/Distro_Testing_Plan

-- Bas.

>     centos-7
>     debian-8
>     debian-9
>     opensuse-42.1
>     opensuse-42.2
>=20
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
>=20
> --
> [v2]
> Drop LTS for ubuntu-16.10
> ---
>  documentation/ref-manual/ref-system-requirements.xml | 20=20
> ++++++++++++--------
>  1 file changed, 12 insertions(+), 8 deletions(-)
>=20
> diff --git a/documentation/ref-manual/ref-system-requirements.xml
> b/documentation/ref-manual/ref-system-requirements.xml
> index 9298e84..6795a69 100644
> --- a/documentation/ref-manual/ref-system-requirements.xml
> +++ b/documentation/ref-manual/ref-system-requirements.xml
> @@ -93,19 +93,22 @@
>                  <listitem><para>Ubuntu 11.10</para></listitem>
>                  <listitem><para>Ubuntu 12.04 (LTS)</para></listitem>
>                  <listitem><para>Ubuntu 13.10</para></listitem>
> -                <listitem><para>Ubuntu 14.04 (LTS)</para></listitem>=20
> -->
> +                <listitem><para>Ubuntu 14.04 (LTS)</para></listitem>
>                  <listitem><para>Ubuntu 14.10</para></listitem>
>                  <listitem><para>Ubuntu 15.04</para></listitem>
> -                <listitem><para>Ubuntu 15.10</para></listitem>
> +                <listitem><para>Ubuntu 15.10</para></listitem> -->
>                  <listitem><para>Ubuntu 16.04 (LTS)</para></listitem>
> +                <listitem><para>Ubuntu 16.10 </para></listitem>
> +                <listitem><para>Ubuntu 17.04 </para></listitem>
>  <!--                <listitem><para>Fedora 16=20
> (Verne)</para></listitem>
>                  <listitem><para>Fedora 17=20
> (Spherical)</para></listitem>
>                  <listitem><para>Fedora release 19 (Schr=C3=B6dinger's
> Cat)</para></listitem>
> -                <listitem><para>Fedora release 20
> (Heisenbug)</para></listitem> -->
> +                <listitem><para>Fedora release 20
> (Heisenbug)</para></listitem>
>                  <listitem><para>Fedora release 22</para></listitem>
>                  <listitem><para>Fedora release 23</para></listitem>
> -<!--                <listitem><para>Fedora release=20
> 24</para></listitem>
> -                <listitem><para>CentOS release 5.6=20
> (Final)</para></listitem>
> +                <listitem><para>Fedora release 24</para></listitem>=20
> -->
> +                <listitem><para>Fedora release 26</para></listitem>
> +<!--                <listitem><para>CentOS release 5.6
> (Final)</para></listitem>
>                  <listitem><para>CentOS release 5.7=20
> (Final)</para></listitem>
>                  <listitem><para>CentOS release 5.8=20
> (Final)</para></listitem>
>                  <listitem><para>CentOS release 6.3=20
> (Final)</para></listitem>
> @@ -121,13 +124,14 @@
>                  <listitem><para>Debian GNU/Linux 7.4=20
> (Wheezy)</para></listitem>
>                  <listitem><para>Debian GNU/Linux 7.5=20
> (Wheezy)</para></listitem>
>                  <listitem><para>Debian GNU/Linux 7.6
> (Wheezy)</para></listitem> -->
> -<!--                <listitem><para>openSUSE 11.4</para></listitem>
> +<!--                <listitem><para>openSUSE 11.4</para></listitem>
>                  <listitem><para>openSUSE 12.1</para></listitem>
>                  <listitem><para>openSUSE 12.2</para></listitem>
>                  <listitem><para>openSUSE 12.3</para></listitem>
> -                <listitem><para>openSUSE 13.1</para></listitem> -->
> -                <listitem><para>openSUSE 13.2</para></listitem>
> +                <listitem><para>openSUSE 13.1</para></listitem>
> +                <listitem><para>openSUSE 13.2</para></listitem> -->
>                  <listitem><para>openSUSE 42.1</para></listitem>
> +                <listitem><para>openSUSE 42.2</para></listitem>
>              </itemizedlist>
>          </para>
>=20
> --
> 2.7.4

--=20
Bas.

