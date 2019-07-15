Return-Path: <moritz.porst@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 147D9E00D36; Mon, 15 Jul 2019 00:12:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	https://www.dnswl.org/, low *      trust
	*      [212.227.17.21 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (moritz.porst[at]gmx.de)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8743CE00D11
	for <yocto@yoctoproject.org>; Mon, 15 Jul 2019 00:12:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1563174755;
	bh=wGTrqXA6dTmr836HZDqv8ZaMSOgUT5MF+klPfHsSilU=;
	h=X-UI-Sender-Class:Subject:To:References:From:Date:In-Reply-To;
	b=kwjVmJBZPvsEdlHEGmO3v+ZFX8Ibbx09Mspw+eXukIJnnngFGtIyeNVBb9/6IooZ+
	UKrfbry8O6U4Cs9DS/B/Wcoelp35t2uKYoPkjA1J0/HYg1a6mDy5hMWVfEkuW+nxqM
	SHjxJ/5lbOK+py9DPQHD25jBqzwsURy+L2WmWr8U=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.2.132] ([80.152.229.14]) by mail.gmx.com (mrgmx105
	[212.227.17.168]) with ESMTPSA (Nemesis) id 1MBDnC-1hbL6T2v9i-00ClhT;
	Mon, 15 Jul 2019 09:12:35 +0200
To: Madhu Krishnamurthy <madhukanthk@yahoo.com>,
	Yocto Discussion List <yocto@yoctoproject.org>
References: <1600236519.1269258.1563172945935.ref@mail.yahoo.com>
	<1600236519.1269258.1563172945935@mail.yahoo.com>
From: Moritz Porst <moritz.porst@gmx.de>
Message-ID: <4f57a648-55e1-3ce7-53a4-c9df8da0f726@gmx.de>
Date: Mon, 15 Jul 2019 09:12:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <1600236519.1269258.1563172945935@mail.yahoo.com>
X-Provags-ID: V03:K1:6yImHqS2mWOhwJ0Ruxb1/WjvWE6gMvkqtwmLVmIC7A4oxUKzXEE
	sRxEK6sAt2lO7Vy4ROqH5bbLl5t94OpBqiJ3DkH/42goI8klQtax22XZNr8ppYqdw/Fcxno
	tQVeMt+h7E0Gq0qYffywQjrP9rIohB7vcrqNlNZ/N5cgxPvh30HWjuqF+FV4prYK7A1As1o
	vq348y2EdQH6sRFAfYAyw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:08H1rU82sSA=:41VHjMquafl2FRGf7e0ABn
	2D0womo1+Zgm5sTGdduKuZTz67DIQvwSEbQrldGbJezeULp2J3kfYs3srJwdPGBtshlizCP3f
	rcxH66iJEu8CjTESvhU5OFXgFUhc7E06uM4fF91sVmNt07CtnzBzDP+x7t0eKh7hNd2yhSTFG
	lgOujq10mfkI48gpvUfFg8EaQtGkJa8zqFUW+19pSsPrGvaWunLcd1h0Y1RmCMpkPVvgNhHgy
	4V2YstUSz7c1sRl3EHfQp9ApSVGAYCAy/ZDmiOhVKXmeqKMxcTlVWeRDKfLefLsGUEGcgvYDd
	LPQWozxqJkZ883oCazKC4batjCe8xX7Ulry6B6C5a0YkLBfNQ+B7pQMNJQZIDpIa/34CJ3fpl
	kn4sG+1kRvMosf7lpmKTLBqdCeMjRcHXBmsIYB1qk4kTlz5JD+qJRpbpw3HuW46ovxmqlTX6H
	lihU6HDstfUOMdIaZob1h7aXxXVdg+3E0XGtbaLJ4wrjucyOgWh7CYL6Eb7Cd4rLhaX141HTL
	fwMSNeZNnjpfK+I+PcHil4ASlEEb4wRi6bwBWLobOTvdQ7KS1ySgaNrnVCYeAPjxsy80MXSJk
	mHbLI72XbA6Z1YVFi4VvCo6Eyk7GHy7Ax2T2/r98U2kBtPjFbE4QTK27bZAOefGPTOL5KmJMm
	IoyQ8fHUb20enYkzUqRq6iIlYO+wuinP2GCrW8cDqIYeZR+8OpWr5XTAbARTtQz6i67q18J0g
	w6hiI9wkaktWbezT+mmqHS4wUsI2NW0PXfnDAZbUuj0i5iltuMXrDVOnebcBnfH1VMquxUYoF
	rRNCe/1LJllpJtCuWSCXsPTuIt5OXvtmH+1Md6EsmN5JdHsaDwvNZ1bAW9LSKXtcfA0oBcxpQ
	kWiEuVgbLNMWJQ7wasN2QIxKzbDnaficMz7cGpJVSBmfOhiUar4EIFGDMg4z7eB91S/WdvrQd
	UMZJWIbAQ0+YhiRn7bOYi7LLIJU0CMGpBVb+czIWD4j8ioWvMNwmD6D2H2RJlDl2RrfQvND11
	/wE/IeZXuciFg806gfZvip7IE0VVw45dY3ukWpEV7Eu+yk9p0FxmUDKXTScz2b7U0O0XY619A
	uIuy4zGTaxXQ3W07eal45CIDyD/DRt914MJ
Subject: Re: No GNU_HASH in the elf binary
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
X-List-Received-Date: Mon, 15 Jul 2019 07:12:41 -0000
Content-Type: multipart/alternative;
	boundary="------------62D7AD2672BBCE1162637AFC"
Content-Language: en-US

--------------62D7AD2672BBCE1162637AFC
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hello

On 15.07.19 08:42, Madhu Krishnamurthy wrote:
> Hello,
> I am trying to package an already built binary executable called mlc
> (memory latency checker) to yocto and I get this error.
>
> ERROR: mem-tst-0.1 do_package: QA Issue: File
> '/usr/local/flex_pkgs/diags/mlc' from mem was already stripped, this
> will prevent future debugging! [already-stripped]
> ERROR: mem-tst-0.1 do_package: Fatal QA errors found, failing task.
> ERROR: mem-tst-0.1 do_package: Function failed: do_package
Your recipe is not called mlc but mem-tst-0.1
> ERROR: Logfile of failure stored in:
> /home/cluser/ac/z_cpu/build/tmp/work/corei7-64-poky-linux/mem/tst-0.1/te=
mp/log.do_package.27614
> ERROR: Task
> (/home/cluser/ac/z_cpu/poky/../meta-flex/meta-z/recipes-utils/mem/mem_ts=
t_0.1.bb:do_package)
> failed with exit=C2=A0code '1'
> NOTE: Tasks Summary: Attempted 458 tasks of which 457 didn't need to
> be rerun and 1 failed.
>
> I googled and found that I need to add this
>
> *INSANE_SKIP_mlc =3D "ldflags"*
> *INSANE_SKIP_mlc-dev =3D "ldflags"*

Thus the two lines above can't work. The preferred way to do this is to
use ${PN} variable which expands to the package name. Like this: >>
INSANE_SKIP_${PN} =3D "ldflags" <<

Best regards
Moritz

> *INHIBIT_PACKAGE_DEBUG_SPLIT =3D "1"*
> *INHIBIT_PACKAGE_STRIP =3D "1"*
>
> But after adding that I still get this error.
> *ERROR: mem-tst-0.1 do_package_qa: QA Issue: No GNU_HASH in the elf
> binary:
> '/home/cluser/ac/z_cpu/build/tmp/work/corei7-64-poky-linux/mem/tst-0.1/p=
ackages-split/mem/usr/local/flex_pkgs/diags/mlc'
> [ldflags]*
> Appreciate any help.
>
> Thanks and regards
> Madhu
>
> (more log details)
> NOTE: Executing RunQueue Tasks
> NOTE: mem-tst-0.1 do_package_qa: Direct dependencies are
> ['virtual:native:/home/cluser/ac/z_cpu/poky/meta/recipes-devtools/pseudo=
/pseudo_1.8.2.bb:do_populate_sysroot',
> '/home/cluser/ac/z_cpu/poky/meta/recipes-devtools/binutils/binutils-cros=
s_2.29.bb:do_populate_sysroot']
> NOTE: mem-tst-0.1 do_package_qa: Installed into sysroot: []
> NOTE: mem-tst-0.1 do_package_qa: Skipping as already exists in
> sysroot: ['pseudo-native', 'binutils-cross-x86_64',
> 'gnu-config-native', 'bison-native', 'flex-native',
> 'texinfo-dummy-native', 'autoconf-native', 'quilt-native',
> 'zlib-native', 'gettext-minimal-native', 'automake-native',
> 'xz-native', 'libtool-native', 'm4-native']
> NOTE: mem-tst-0.1 do_package_qa: DO PACKAGE QA
> NOTE: mem-tst-0.1 do_package_qa: Checking Package: mem
> NOTE: mem-tst-0.1 do_package_qa: x86_64-poky-linux-objdump -p
> /home/cluser/ac/z_cpu/build/tmp/work/corei7-64-poky-linux/mem/tst-0.1/pa=
ckages-split/mem/usr/local/flex_pkgs/diags/mlc
> *ERROR: mem-tst-0.1 do_package_qa: QA Issue: No GNU_HASH in the elf
> binary:
> '/home/cluser/ac/z_cpu/build/tmp/work/corei7-64-poky-linux/mem/tst-0.1/p=
ackages-split/mem/usr/local/flex_pkgs/diags/mlc'
> [ldflags]*
> NOTE: mem-tst-0.1 do_package_qa: Checking Package: mem-staticdev
> NOTE: mem-tst-0.1 do_package_qa: Checking Package: mem-locale
> NOTE: mem-tst-0.1 do_package_qa: Checking Package: mem-doc
> NOTE: mem-tst-0.1 do_package_qa: Checking Package: mem-dbg
> NOTE: mem-tst-0.1 do_package_qa: Checking Package: mem-dev
> *ERROR: mem-tst-0.1 do_package_qa: QA run found fatal errors. Please
> consider fixing them.*
> *ERROR: mem-tst-0.1 do_package_qa: Function failed: do_package_qa*
> *ERROR: Logfile of failure stored in:
> /home/cluser/ac/z_cpu/build/tmp/work/corei7-64-poky-linux/mem/tst-0.1/te=
mp/log.do_package_qa.25300*
> *ERROR: Task
> (/home/cluser/ac/z_cpu/poky/../meta-flex/meta-z/recipes-utils/mem/mem_ts=
t_0.1.bb:do_package_qa)
> failed with exit code '1'*
> NOTE: Tasks Summary: Attempted 461 tasks of which 460 didn't need to
> be rerun and 1 failed.
>
> Summary: 1 task failed:
> /home/cluser/ac/z_cpu/poky/../meta-flex/meta-z/recipes-utils/mem/mem_tst=
_0.1.bb:do_package_qa
>
>
>

--------------62D7AD2672BBCE1162637AFC
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>Hello<br>
    </p>
    <div class=3D"moz-cite-prefix">On 15.07.19 08:42, Madhu Krishnamurthy
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:1600236519.1269258.1563172945935@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUT=
F-8">
      <div class=3D"yahoo-style-wrap" style=3D"font-family:Helvetica Neue,
        Helvetica, Arial, sans-serif;font-size:16px;">
        <div dir=3D"ltr" data-setdir=3D"false">
          <div>
            <div dir=3D"ltr" style=3D"font-family: &quot;Helvetica
              Neue&quot;, Helvetica, Arial, sans-serif; font-size:
              16px;">Hello,</div>
            <div dir=3D"ltr" style=3D"font-family: &quot;Helvetica
              Neue&quot;, Helvetica, Arial, sans-serif; font-size:
              16px;">I am trying to package an already built binary
              executable called mlc (memory latency checker) to yocto
              and I get this error.=C2=A0</div>
            <div style=3D"font-family: &quot;Helvetica Neue&quot;,
              Helvetica, Arial, sans-serif; font-size: 16px;"><br>
            </div>
            <div style=3D"font-family: &quot;Helvetica Neue&quot;,
              Helvetica, Arial, sans-serif; font-size: 16px;"><font
                color=3D"#cd232c">ERROR: mem-tst-0.1 do_package: QA Issue:
                File '/usr/local/flex_pkgs/diags/mlc' from mem was
                already stripped, this will prevent future debugging!
                [already-stripped]</font></div>
            <div style=3D"font-family: &quot;Helvetica Neue&quot;,
              Helvetica, Arial, sans-serif; font-size: 16px;"><font
                color=3D"#cd232c">ERROR: mem-tst-0.1 do_package: Fatal QA
                errors found, failing task.</font></div>
            <div style=3D"font-family: &quot;Helvetica Neue&quot;,
              Helvetica, Arial, sans-serif; font-size: 16px;"><font
                color=3D"#cd232c">ERROR: mem-tst-0.1 do_package: Function
                failed: do_package</font></div>
          </div>
        </div>
      </div>
    </blockquote>
    <font color=3D"#cd232c"><font color=3D"#000000">Your recipe is not
        called mlc but mem-tst-0.1</font></font><br>
    <blockquote type=3D"cite"
      cite=3D"mid:1600236519.1269258.1563172945935@mail.yahoo.com">
      <div class=3D"yahoo-style-wrap" style=3D"font-family:Helvetica Neue,
        Helvetica, Arial, sans-serif;font-size:16px;">
        <div dir=3D"ltr" data-setdir=3D"false">
          <div>
            <div style=3D"font-family: &quot;Helvetica Neue&quot;,
              Helvetica, Arial, sans-serif; font-size: 16px;"><font
                color=3D"#cd232c">ERROR: Logfile of failure stored in:
/home/cluser/ac/z_cpu/build/tmp/work/corei7-64-poky-linux/mem/tst-0.1/temp=
/log.do_package.27614</font></div>
            <div style=3D"font-family: &quot;Helvetica Neue&quot;,
              Helvetica, Arial, sans-serif; font-size: 16px;"><font
                color=3D"#cd232c">ERROR: Task
(/home/cluser/ac/z_cpu/poky/../meta-flex/meta-z/recipes-utils/mem/mem_tst_=
0.1.bb:do_package)
                failed with exit</font>=C2=A0code '1'</div>
            <div style=3D"font-family: &quot;Helvetica Neue&quot;,
              Helvetica, Arial, sans-serif; font-size: 16px;">NOTE:
              Tasks Summary: Attempted 458 tasks of which 457 didn't
              need to be rerun and 1 failed.</div>
            <div style=3D"font-family: &quot;Helvetica Neue&quot;,
              Helvetica, Arial, sans-serif; font-size: 16px;"><br>
            </div>
            <div style=3D"font-family: &quot;Helvetica Neue&quot;,
              Helvetica, Arial, sans-serif; font-size: 16px;">I googled
              and found that I need to add this</div>
            <div style=3D"font-family: &quot;Helvetica Neue&quot;,
              Helvetica, Arial, sans-serif; font-size: 16px;"><br>
            </div>
            <div style=3D"font-family: &quot;Helvetica Neue&quot;,
              Helvetica, Arial, sans-serif; font-size: 16px;"><b>INSANE_SK=
IP_mlc
                =3D "ldflags"</b></div>
            <div style=3D"font-family: &quot;Helvetica Neue&quot;,
              Helvetica, Arial, sans-serif; font-size: 16px;"><b>INSANE_SK=
IP_mlc-dev
                =3D "ldflags"</b></div>
          </div>
        </div>
      </div>
    </blockquote>
    <p>Thus the two lines above can't work. The preferred way to do this
      is to use ${PN} variable which expands to the package name. Like
      this: &gt;&gt; INSANE_SKIP_${PN} =3D "ldflags" &lt;&lt;<br>
    </p>
    <p>Best regards<br>
      Moritz<br>
    </p>
    <blockquote type=3D"cite"
      cite=3D"mid:1600236519.1269258.1563172945935@mail.yahoo.com">
      <div class=3D"yahoo-style-wrap" style=3D"font-family:Helvetica Neue,
        Helvetica, Arial, sans-serif;font-size:16px;">
        <div dir=3D"ltr" data-setdir=3D"false">
          <div>
            <div style=3D"font-family: &quot;Helvetica Neue&quot;,
              Helvetica, Arial, sans-serif; font-size: 16px;"><b>INHIBIT_P=
ACKAGE_DEBUG_SPLIT
                =3D "1"</b></div>
            <div style=3D"font-family: &quot;Helvetica Neue&quot;,
              Helvetica, Arial, sans-serif; font-size: 16px;"><b>INHIBIT_P=
ACKAGE_STRIP
                =3D "1"</b></div>
            <div style=3D"font-family: &quot;Helvetica Neue&quot;,
              Helvetica, Arial, sans-serif; font-size: 16px;"><br>
            </div>
            <div style=3D"font-family: &quot;Helvetica Neue&quot;,
              Helvetica, Arial, sans-serif; font-size: 16px;">But after
              adding that I still get this error.=C2=A0</div>
            <div dir=3D"ltr" style=3D"font-family: &quot;Helvetica
              Neue&quot;, Helvetica, Arial, sans-serif; font-size:
              16px;"><b style=3D"color: rgb(205, 35, 44); font-family:
                Helvetica, Arial, sans-serif;">ERROR: mem-tst-0.1
                do_package_qa: QA Issue: No GNU_HASH in the elf binary:
'/home/cluser/ac/z_cpu/build/tmp/work/corei7-64-poky-linux/mem/tst-0.1/pac=
kages-split/mem/usr/local/flex_pkgs/diags/mlc'
                [ldflags]</b></div>
            <div dir=3D"ltr" style=3D"font-family: &quot;Helvetica
              Neue&quot;, Helvetica, Arial, sans-serif; font-size:
              16px;">=C2=A0</div>
            <div dir=3D"ltr" style=3D"font-family: &quot;Helvetica
              Neue&quot;, Helvetica, Arial, sans-serif; font-size:
              16px;">Appreciate any help.</div>
            <div dir=3D"ltr" style=3D"font-family: &quot;Helvetica
              Neue&quot;, Helvetica, Arial, sans-serif; font-size:
              16px;"><br>
            </div>
            <div style=3D"font-family: &quot;Helvetica Neue&quot;,
              Helvetica, Arial, sans-serif; font-size: 16px;">Thanks and
              regards</div>
            <div style=3D"font-family: &quot;Helvetica Neue&quot;,
              Helvetica, Arial, sans-serif; font-size: 16px;">Madhu</div>
            <div style=3D"font-family: &quot;Helvetica Neue&quot;,
              Helvetica, Arial, sans-serif; font-size: 16px;"><br>
            </div>
            <div dir=3D"ltr" style=3D"font-family: &quot;Helvetica
              Neue&quot;, Helvetica, Arial, sans-serif; font-size:
              16px;">(more log details)</div>
            <div style=3D"font-family: &quot;Helvetica Neue&quot;,
              Helvetica, Arial, sans-serif; font-size: 16px;">NOTE:
              Executing RunQueue Tasks</div>
            <div style=3D"font-family: &quot;Helvetica Neue&quot;,
              Helvetica, Arial, sans-serif; font-size: 16px;">NOTE:
              mem-tst-0.1 do_package_qa: Direct dependencies are
['virtual:native:/home/cluser/ac/z_cpu/poky/meta/recipes-devtools/pseudo/p=
seudo_1.8.2.bb:do_populate_sysroot',
'/home/cluser/ac/z_cpu/poky/meta/recipes-devtools/binutils/binutils-cross_=
2.29.bb:do_populate_sysroot']</div>
            <div style=3D"font-family: &quot;Helvetica Neue&quot;,
              Helvetica, Arial, sans-serif; font-size: 16px;">NOTE:
              mem-tst-0.1 do_package_qa: Installed into sysroot: []</div>
            <div style=3D"font-family: &quot;Helvetica Neue&quot;,
              Helvetica, Arial, sans-serif; font-size: 16px;">NOTE:
              mem-tst-0.1 do_package_qa: Skipping as already exists in
              sysroot: ['pseudo-native', 'binutils-cross-x86_64',
              'gnu-config-native', 'bison-native', 'flex-native',
              'texinfo-dummy-native', 'autoconf-native', 'quilt-native',
              'zlib-native', 'gettext-minimal-native',
              'automake-native', 'xz-native', 'libtool-native',
              'm4-native']</div>
            <div style=3D"font-family: &quot;Helvetica Neue&quot;,
              Helvetica, Arial, sans-serif; font-size: 16px;">NOTE:
              mem-tst-0.1 do_package_qa: DO PACKAGE QA</div>
            <div style=3D"font-family: &quot;Helvetica Neue&quot;,
              Helvetica, Arial, sans-serif; font-size: 16px;">NOTE:
              mem-tst-0.1 do_package_qa: Checking Package: mem</div>
            <div style=3D"font-family: &quot;Helvetica Neue&quot;,
              Helvetica, Arial, sans-serif; font-size: 16px;">NOTE:
              mem-tst-0.1 do_package_qa: x86_64-poky-linux-objdump -p
/home/cluser/ac/z_cpu/build/tmp/work/corei7-64-poky-linux/mem/tst-0.1/pack=
ages-split/mem/usr/local/flex_pkgs/diags/mlc</div>
            <div style=3D"font-family: &quot;Helvetica Neue&quot;,
              Helvetica, Arial, sans-serif; font-size: 16px;"><font
                color=3D"#cd232c"><b>ERROR: mem-tst-0.1 do_package_qa: QA
                  Issue: No GNU_HASH in the elf binary:
'/home/cluser/ac/z_cpu/build/tmp/work/corei7-64-poky-linux/mem/tst-0.1/pac=
kages-split/mem/usr/local/flex_pkgs/diags/mlc'
                  [ldflags]</b></font></div>
            <div style=3D"font-family: &quot;Helvetica Neue&quot;,
              Helvetica, Arial, sans-serif; font-size: 16px;">NOTE:
              mem-tst-0.1 do_package_qa: Checking Package: mem-staticdev</=
div>
            <div style=3D"font-family: &quot;Helvetica Neue&quot;,
              Helvetica, Arial, sans-serif; font-size: 16px;">NOTE:
              mem-tst-0.1 do_package_qa: Checking Package: mem-locale</div=
>
            <div style=3D"font-family: &quot;Helvetica Neue&quot;,
              Helvetica, Arial, sans-serif; font-size: 16px;">NOTE:
              mem-tst-0.1 do_package_qa: Checking Package: mem-doc</div>
            <div style=3D"font-family: &quot;Helvetica Neue&quot;,
              Helvetica, Arial, sans-serif; font-size: 16px;">NOTE:
              mem-tst-0.1 do_package_qa: Checking Package: mem-dbg</div>
            <div style=3D"font-family: &quot;Helvetica Neue&quot;,
              Helvetica, Arial, sans-serif; font-size: 16px;">NOTE:
              mem-tst-0.1 do_package_qa: Checking Package: mem-dev</div>
            <div style=3D"font-family: &quot;Helvetica Neue&quot;,
              Helvetica, Arial, sans-serif; font-size: 16px;"><font
                color=3D"#cd232c"><b>ERROR: mem-tst-0.1 do_package_qa: QA
                  run found fatal errors. Please consider fixing them.</b>=
</font></div>
            <div style=3D"font-family: &quot;Helvetica Neue&quot;,
              Helvetica, Arial, sans-serif; font-size: 16px;"><font
                color=3D"#cd232c"><b>ERROR: mem-tst-0.1 do_package_qa:
                  Function failed: do_package_qa</b></font></div>
            <div style=3D"font-family: &quot;Helvetica Neue&quot;,
              Helvetica, Arial, sans-serif; font-size: 16px;"><font
                color=3D"#cd232c"><b>ERROR: Logfile of failure stored in:
/home/cluser/ac/z_cpu/build/tmp/work/corei7-64-poky-linux/mem/tst-0.1/temp=
/log.do_package_qa.25300</b></font></div>
            <div style=3D"font-family: &quot;Helvetica Neue&quot;,
              Helvetica, Arial, sans-serif; font-size: 16px;"><font
                color=3D"#cd232c"><b>ERROR: Task
(/home/cluser/ac/z_cpu/poky/../meta-flex/meta-z/recipes-utils/mem/mem_tst_=
0.1.bb:do_package_qa)
                  failed with exit code '1'</b></font></div>
            <div style=3D"font-family: &quot;Helvetica Neue&quot;,
              Helvetica, Arial, sans-serif; font-size: 16px;">NOTE:
              Tasks Summary: Attempted 461 tasks of which 460 didn't
              need to be rerun and 1 failed.</div>
            <div style=3D"font-family: &quot;Helvetica Neue&quot;,
              Helvetica, Arial, sans-serif; font-size: 16px;"><br>
            </div>
            <div style=3D"font-family: &quot;Helvetica Neue&quot;,
              Helvetica, Arial, sans-serif; font-size: 16px;">Summary: 1
              task failed:</div>
            <div style=3D"font-family: &quot;Helvetica Neue&quot;,
              Helvetica, Arial, sans-serif; font-size: 16px;">=C2=A0
/home/cluser/ac/z_cpu/poky/../meta-flex/meta-z/recipes-utils/mem/mem_tst_0=
.1.bb:do_package_qa</div>
            <div style=3D"font-family: &quot;Helvetica Neue&quot;,
              Helvetica, Arial, sans-serif; font-size: 16px;"><br>
            </div>
          </div>
          <br>
        </div>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
    </blockquote>
  </body>
</html>

--------------62D7AD2672BBCE1162637AFC--
