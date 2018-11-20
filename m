Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25D72E00C43; Tue, 20 Nov 2018 02:05:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.171 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f171.google.com (mail-it1-f171.google.com
	[209.85.166.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2863E00C3B
	for <yocto@yoctoproject.org>; Tue, 20 Nov 2018 02:05:38 -0800 (PST)
Received: by mail-it1-f171.google.com with SMTP id b5so2626995iti.2
	for <yocto@yoctoproject.org>; Tue, 20 Nov 2018 02:05:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=N4QlCY7+d4hJJ73zo2MiOjaF5BnxThBCVJArtAGe9w8=;
	b=o92V74RxwlZKueczZyOO0Lnxa1W5fNu7BvcLKrwifcE8QkIgPYUp5kzDzZQxE7XEzO
	DIPHsj0i4TpZ4CIsk59Q2FpjEmNX04UVLje9KnzrOpQwaE+RMNYcY17i5AvDFC3F0hnz
	pksDugNrTXMKPhobq5F7QMwz7QHnD5BZ0jAmpI/jZ2IuIyhEZAhMoUKX7pkG1UZVDXcC
	e/BQ2NA+IpGRHXAqbb3LA79TrtdgVjCHVb5x7p1MME4R1vRzjhZaN1w1J44mA80U4+Ts
	wB8p62NLzT0wCa8lcP3NUQhjJI5KawQFYd6PvtLRlk/NTs3YnJNfvSieOm1R4nLVpXvE
	lXCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=N4QlCY7+d4hJJ73zo2MiOjaF5BnxThBCVJArtAGe9w8=;
	b=i6aV2L9F6goBo6BhxTasFp1yhX4O9C+LB7am4+scca55xCgK5bFOttyqmRbLEemnux
	bixRho/U6a/9eh6hkpBmTRsnH9DUkCzzIhnSzSexdlwOfplHdG0ip3fHfVHTfvs495md
	lWWJyE4UorDXZOssrlWLvTOgWYndRx2gYJ9sa2RyQjkp4GLkRwgh9UekAUQrTV0x9zLj
	rzZxN7e0O5fB012U2J75Iq7gPHzWNi9Xll5oc/bHdi9fediOIbcNEVZZK867k2FPE9OD
	yZKd5TZDiRLEco31cZ41RFwTA1f/Ga5hqtZ/KyIRoGMKcF76rekqfknWt+EG/S4dgTjF
	fzIA==
X-Gm-Message-State: AGRZ1gJRXq5AyvNLH5WxNEPn/Yko+icNsgahRxLhsJCjkTWCgPENSm64
	cFNKVa14kgpwFhK8c4yhAJV3JI0pAtXPY5oUCMEEJnvf
X-Google-Smtp-Source: AJdET5c5l9dp+Q6mFs5Ev+BuWeeljK2a8rR118mvBZx/Q3duh8bT4LtaVX2F4zuWHtW//KCwjUxWuPKpIjJIuyNaWfU=
X-Received: by 2002:a24:ce45:: with SMTP id
	v66-v6mr1493766itg.26.1542708337882; 
	Tue, 20 Nov 2018 02:05:37 -0800 (PST)
MIME-Version: 1.0
References: <A24DC035FE5F8F4BAE7F63FB1B07D7BC4EE3C1@SRV24.hamburg.garz-fricke.de>
In-Reply-To: <A24DC035FE5F8F4BAE7F63FB1B07D7BC4EE3C1@SRV24.hamburg.garz-fricke.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 20 Nov 2018 10:05:25 +0000
Message-ID: <CAJTo0Lbx-MLLJMa-DM9F9BpuiehxEs1HVK81EEhjkds+SU-n_g@mail.gmail.com>
To: Norman.Stetter@garz-fricke.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: PermissionError when using image_list_installed_packages
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
X-List-Received-Date: Tue, 20 Nov 2018 10:05:40 -0000
X-Groupsio-MsgNum: 43317
Content-Type: multipart/related; boundary="000000000000791f5c057b15c61d"

--000000000000791f5c057b15c61d
Content-Type: multipart/alternative; boundary="000000000000791f59057b15c61c"

--000000000000791f59057b15c61c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Your recipe is a non-image recipe, so what image do you expect it to list
the manifest of?

On Tue, 20 Nov 2018 at 08:16, Norman Stetter <Norman.Stetter@garz-fricke.co=
m>
wrote:

> Hi,
>
>
>
> I am currently working on a BitBake task, which generates a html file
> containing a table of all packages used in my image.
>
>
>
> To get a list of all packages I want to use 'image_list_installed_package=
s'
> from 'oe.rootfs', the way it is used in 'license.bbclass=E2=80=99.
>
>
>
> My minimal test recipe looks like this:
>
>
>
> SUMMARY =3D "Test recipe"
> SECTION =3D "examples"
> LICENSE =3D "MIT"
> LIC_FILES_CHKSUM =3D "
> file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0bcf8506ecda2f7b4f302"
>
> inherit license
>
>
> python do_licensesinfo() {
>   from oe.rootfs import image_list_installed_packages
>   pkgs =3D image_list_installed_packages(d)
> }
> addtask licensesinfo
>
> When I run the task 'licensesinfo' it fails giving this log:
>
>
>
> DEBUG: Executing python function do_licensesinfo
> ERROR: Error executing a python function in exec_python_func()
> autogenerated:
>
> The stack trace of python calls that resulted in this exception/failure
> was:
> File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
>      0001:
>  *** 0002:do_licensesinfo(d)
>      0003:
> File:
> '/home/norman.stetter/build/yocto-rocko/sources/meta-guf/meta/recipes-bsp=
/images/
> guf-image-licenses.bb', lineno: 11, function: do_licensesinfo
>      0007:
>      0008:
>      0009:python do_licensesinfo() {
>      0010:  from oe.rootfs import image_list_installed_packages
>  *** 0011:  pkgs =3D image_list_installed_packages(d)
>      0012:}
>      0013:addtask licensesinfo
>      0014:
>      0015:
> File:
> '/home/norman.stetter/build/yocto-rocko/sources/poky/meta/lib/oe/rootfs.p=
y',
> lineno: 1026, function: image_list_installed_packages
>      1022:        rootfs_dir =3D d.getVar('IMAGE_ROOTFS')
>      1023:
>      1024:    img_type =3D d.getVar('IMAGE_PKGTYPE')
>      1025:    if img_type =3D=3D "rpm":
>  *** 1026:        return RpmPkgsList(d, rootfs_dir).list_pkgs()
>      1027:    elif img_type =3D=3D "ipk":
>      1028:        return OpkgPkgsList(d, rootfs_dir,
> d.getVar("IPKGCONF_TARGET")).list_pkgs()
>      1029:    elif img_type =3D=3D "deb":
>      1030:        return DpkgPkgsList(d, rootfs_dir).list_pkgs()
> File:
> '/home/norman.stetter/build/yocto-rocko/sources/poky/meta/lib/oe/package_=
manager.py',
> lineno: 258, function: list_pkgs
>      0254:        pass
>      0255:
>      0256:class RpmPkgsList(PkgsList):
>      0257:    def list_pkgs(self):
>  *** 0258:        return RpmPM(self.d, self.rootfs_dir,
> self.d.getVar('TARGET_VENDOR')).list_installed()
>      0259:
>      0260:class OpkgPkgsList(PkgsList):
>      0261:    def __init__(self, d, rootfs_dir, config_file):
>      0262:        super(OpkgPkgsList, self).__init__(d, rootfs_dir)
> File:
> '/home/norman.stetter/build/yocto-rocko/sources/poky/meta/lib/oe/package_=
manager.py',
> lineno: 689, function: list_installed
>      0685:                            symlinks=3DTrue)
>      0686:
>      0687:    def list_installed(self):
>      0688:        output =3D self._invoke_dnf(["repoquery", "--installed"=
,
> "--queryformat", "Package: %{name} %{arch} %{version}
> %{name}-%{version}-%{release}.%{arch}.rpm\nDependencies:\n%{requires}\nRe=
commendations:\n%{recommends}\nDependenciesEndHere:\n"],
>  *** 0689:                                  print_output =3D False)
>      0690:        packages =3D {}
>      0691:        current_package =3D None
>      0692:        current_deps =3D None
>      0693:        current_state =3D "initial"
> File:
> '/home/norman.stetter/build/yocto-rocko/sources/poky/meta/lib/oe/package_=
manager.py',
> lineno: 734, function: _invoke_dnf
>      0730:                             "--setopt=3Dlogdir=3D%s" %
> (self.d.getVar('T'))
>      0731:                            ]
>      0732:        cmd =3D [dnf_cmd] + standard_dnf_args + dnf_args
>      0733:        try:
>  *** 0734:            output =3D
> subprocess.check_output(cmd,stderr=3Dsubprocess.STDOUT).decode("utf-8")
>      0735:            if print_output:
>      0736:                bb.note(output)
>      0737:            return output
>      0738:        except subprocess.CalledProcessError as e:
> File: '/usr/lib/python3.5/subprocess.py', lineno: 626, function:
> check_output
>      0622:        # empty string. That is maintained here for backwards
> compatibility.
>      0623:        kwargs['input'] =3D '' if kwargs.get('universal_newline=
s',
> False) else b''
>      0624:
>      0625:    return run(*popenargs, stdout=3DPIPE, timeout=3Dtimeout,
> check=3DTrue,
>  *** 0626:               **kwargs).stdout
>      0627:
>      0628:
>      0629:class CompletedProcess(object):
>      0630:    """A process that has finished running.
> File: '/usr/lib/python3.5/subprocess.py', lineno: 693, function: run
>      0689:        if 'stdin' in kwargs:
>      0690:            raise ValueError('stdin and input arguments may not
> both be used.')
>      0691:        kwargs['stdin'] =3D PIPE
>      0692:
>  *** 0693:    with Popen(*popenargs, **kwargs) as process:
>      0694:        try:
>      0695:            stdout, stderr =3D process.communicate(input,
> timeout=3Dtimeout)
>      0696:        except TimeoutExpired:
>      0697:            process.kill()
> File: '/usr/lib/python3.5/subprocess.py', lineno: 947, function: __init__
>      0943:                                startupinfo, creationflags,
> shell,
>      0944:                                p2cread, p2cwrite,
>      0945:                                c2pread, c2pwrite,
>      0946:                                errread, errwrite,
>  *** 0947:                                restore_signals,
> start_new_session)
>      0948:        except:
>      0949:            # Cleanup if the child failed starting.
>      0950:            for f in filter(None, (self.stdin, self.stdout,
> self.stderr)):
>      0951:                try:
> File: '/usr/lib/python3.5/subprocess.py', lineno: 1551, function:
> _execute_child
>      1547:                                # The error must be from
> chdir(cwd).
>      1548:                                err_msg +=3D ': ' + repr(cwd)
>      1549:                            else:
>      1550:                                err_msg +=3D ': ' +
> repr(orig_executable)
>  *** 1551:                    raise child_exception_type(errno_num,
> err_msg)
>      1552:                raise child_exception_type(err_msg)
>      1553:
>      1554:
>      1555:        def _handle_exitstatus(self, sts,
> _WIFSIGNALED=3Dos.WIFSIGNALED,
> Exception: PermissionError: [Errno 13] Permission denied
>
> DEBUG: Python function do_licensesinfo finished
> ERROR: Function failed: do_licensesinfo
>
>
>
> So it looks like the invoked 'dnf' can't open a file due to permission
> issues.
>
>
>
> But I never experienced any problems during my regular builds, which
> obviously also use 'image_list_installed_packages'.
>
>
>
> Does someone know why I encounter this error only, when calling '
> image_list_installed_packages' in my own recipe?
>
>
>
>
>
> Regards,
>
>
>
> Norman
>
>
>
>
>
> Mit freundlichen Gr=C3=BC=C3=9Fen / Best regards
>
>
> *Norman Stetter *SW ENWICKLUNG EMBEDDED SYSTEMS
> Garz & Fricke GmbH
>
>
> 21079 Hamburg
>
> Direct: +49 40 791899 - 477
> Fax: +49 40 791899 - 39
> Norman.Stetter@garz-fricke.com
> www.garz-fricke.com
>
> WE MAKE IT YOURS!
>
> Sitz der Gesellschaft: D-21079 Hamburg
> Registergericht: Amtsgericht Hamburg, HRB 60514
> Gesch=C3=A4ftsf=C3=BChrer: Matthias Fricke, Manfred Garz, Marc-Michael Br=
aun
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000791f59057b15c61c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Your recipe is a non-image recipe, so what image do you ex=
pect it to list the manifest of?</div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr">On Tue, 20 Nov 2018 at 08:16, Norman Stetter &lt;<a href=3D"mail=
to:Norman.Stetter@garz-fricke.com">Norman.Stetter@garz-fricke.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex">





<div lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"m_3057246812904299713WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;color=
:black">Hi,</span><span lang=3D"EN-US" style=3D"color:black"><u></u><u></u>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;color=
:black">=C2=A0</span><span lang=3D"EN-US" style=3D"color:black"><u></u><u><=
/u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;color=
:black">I am currently working on a
<span class=3D"m_3057246812904299713spelle">BitBake</span> task, which gene=
rates a html file containing a table of all packages used in my image.</spa=
n><span lang=3D"EN-US" style=3D"color:black"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;color=
:black">=C2=A0</span><span lang=3D"EN-US" style=3D"color:black"><u></u><u><=
/u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;color=
:black">To get a list of all packages I want to use &#39;<span class=3D"m_3=
057246812904299713spelle">image_list_installed_packages</span>&#39; from &#=
39;<span class=3D"m_3057246812904299713spelle">oe.rootfs&#39;</span>, the w=
ay it is used in &#39;<span class=3D"m_3057246812904299713spelle">license.b=
bclass</span>=E2=80=99.</span><span lang=3D"EN-US" style=3D"color:black"><u=
></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;color=
:black">=C2=A0</span><span lang=3D"EN-US" style=3D"color:black"><u></u><u><=
/u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;color=
:black">My minimal test recipe looks like this:</span><span lang=3D"EN-US" =
style=3D"color:black"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:black"><u></u>=
=C2=A0<u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span lang=3D"EN-US" =
style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:black;b=
ackground:white">SUMMARY =3D &quot;Test recipe&quot;<br>
SECTION =3D &quot;examples&quot;<br>
LICENSE =3D &quot;MIT&quot;<br>
LIC_FILES_CHKSUM =3D &quot;<a>file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ad=
e698e0bcf8506ecda2f7b4f302</a>&quot;<br>
<br>
inherit license<br>
<br>
<br>
python do_licensesinfo() {<br>
=C2=A0 from oe.rootfs import image_list_installed_packages<br>
=C2=A0 pkgs =3D image_list_installed_packages(d)<br>
}<br>
addtask licensesinfo</span><span lang=3D"EN-US" style=3D"font-size:10.0pt;f=
ont-family:&quot;Tahoma&quot;,sans-serif;color:black"><u></u><u></u></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;color=
:black">When I run the task &#39;licensesinfo&#39; it fails giving this log=
:</span><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,sans-serif;color:black"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Tahoma&quot;,sans-serif;color:black"><u></u>=C2=A0<u></u></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Courier New&quot;;color:black">DEBUG: Executing python functio=
n do_licensesinfo<br>
ERROR: Error executing a python function in exec_python_func() autogenerate=
d:<br>
<br>
The stack trace of python calls that resulted in this exception/failure was=
:<br>
File: &#39;exec_python_func() autogenerated&#39;, lineno: 2, function: &lt;=
module&gt;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0001:<br>
=C2=A0*** 0002:do_licensesinfo(d)<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0003:<br>
File: &#39;/home/norman.stetter/build/yocto-rocko/sources/meta-guf/meta/rec=
ipes-bsp/images/<a href=3D"http://guf-image-licenses.bb" target=3D"_blank">=
guf-image-licenses.bb</a>&#39;, lineno: 11, function: do_licensesinfo<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0007:<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0008:<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0009:python do_licensesinfo() {<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0010:=C2=A0 from oe.rootfs import image_list_insta=
lled_packages<br>
=C2=A0*** 0011:=C2=A0 pkgs =3D image_list_installed_packages(d)<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0012:}<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0013:addtask licensesinfo<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0014:<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0015:<br>
File: &#39;/home/norman.stetter/build/yocto-rocko/sources/poky/meta/lib/oe/=
rootfs.py&#39;, lineno: 1026, function: image_list_installed_packages<br>
=C2=A0=C2=A0=C2=A0=C2=A0 1022:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ro=
otfs_dir =3D d.getVar(&#39;IMAGE_ROOTFS&#39;)<br>
=C2=A0=C2=A0=C2=A0=C2=A0 1023:<br>
=C2=A0=C2=A0=C2=A0=C2=A0 1024:=C2=A0=C2=A0=C2=A0 img_type =3D d.getVar(&#39=
;IMAGE_PKGTYPE&#39;)<br>
=C2=A0=C2=A0=C2=A0=C2=A0 1025:=C2=A0=C2=A0=C2=A0 if img_type =3D=3D &quot;r=
pm&quot;:<br>
=C2=A0*** 1026:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return RpmPkgsLis=
t(d, rootfs_dir).list_pkgs()<br>
=C2=A0=C2=A0=C2=A0=C2=A0 1027:=C2=A0=C2=A0=C2=A0 elif img_type =3D=3D &quot=
;ipk&quot;:<br>
=C2=A0=C2=A0=C2=A0=C2=A0 1028:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 re=
turn OpkgPkgsList(d, rootfs_dir, d.getVar(&quot;IPKGCONF_TARGET&quot;)).lis=
t_pkgs()<br>
=C2=A0=C2=A0=C2=A0=C2=A0 1029:=C2=A0=C2=A0=C2=A0 elif img_type =3D=3D &quot=
;deb&quot;:<br>
=C2=A0=C2=A0=C2=A0=C2=A0 1030:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 re=
turn DpkgPkgsList(d, rootfs_dir).list_pkgs()<br>
File: &#39;/home/norman.stetter/build/yocto-rocko/sources/poky/meta/lib/oe/=
package_manager.py&#39;, lineno: 258, function: list_pkgs<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0254:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pa=
ss<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0255:<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0256:class RpmPkgsList(PkgsList):<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0257:=C2=A0=C2=A0=C2=A0 def list_pkgs(self):<br>
=C2=A0*** 0258:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return RpmPM(self=
.d, self.rootfs_dir, self.d.getVar(&#39;TARGET_VENDOR&#39;)).list_installed=
()<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0259:<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0260:class OpkgPkgsList(PkgsList):<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0261:=C2=A0=C2=A0=C2=A0 def __init__(self, d, root=
fs_dir, config_file):<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0262:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 su=
per(OpkgPkgsList, self).__init__(d, rootfs_dir)<br>
File: &#39;/home/norman.stetter/build/yocto-rocko/sources/poky/meta/lib/oe/=
package_manager.py&#39;, lineno: 689, function: list_installed<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0685:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 symlinks=3DTrue)<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0686:<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0687:=C2=A0=C2=A0=C2=A0 def list_installed(self):<=
br>
=C2=A0=C2=A0=C2=A0=C2=A0 0688:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ou=
tput =3D self._invoke_dnf([&quot;repoquery&quot;, &quot;--installed&quot;, =
&quot;--queryformat&quot;, &quot;Package: %{name} %{arch} %{version} %{name=
}-%{version}-%{release}.%{arch}.rpm\nDependencies:\n%{requires}\nRecommenda=
tions:\n%{recommends}\nDependenciesEndHere:\n&quot;],<br>
=C2=A0*** 0689:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 print_outpu=
t =3D False)<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0690:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pa=
ckages =3D {}<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0691:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cu=
rrent_package =3D None<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0692:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cu=
rrent_deps =3D None<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0693:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cu=
rrent_state =3D &quot;initial&quot;<br>
File: &#39;/home/norman.stetter/build/yocto-rocko/sources/poky/meta/lib/oe/=
package_manager.py&#39;, lineno: 734, function: _invoke_dnf<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0730:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &quot;--setopt=3Dlogdir=3D=
%s&quot; % (self.d.getVar(&#39;T&#39;))<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0731:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ]<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0732:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cm=
d =3D [dnf_cmd] + standard_dnf_args + dnf_args<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0733:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 tr=
y:<br>
=C2=A0*** 0734:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 output =3D subprocess.check_output(cmd,stderr=3Dsubprocess.STDOUT).d=
ecode(&quot;utf-8&quot;)<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0735:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 if print_output:<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0736:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bb.note(output)<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0737:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 return output<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0738:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ex=
cept subprocess.CalledProcessError as e:<br>
File: &#39;/usr/lib/python3.5/subprocess.py&#39;, lineno: 626, function: ch=
eck_output<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0622:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # =
empty string. That is maintained here for backwards compatibility.<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0623:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 kw=
args[&#39;input&#39;] =3D &#39;&#39; if kwargs.get(&#39;universal_newlines&=
#39;, False) else b&#39;&#39;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0624:<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0625:=C2=A0=C2=A0=C2=A0 return run(*popenargs, std=
out=3DPIPE, timeout=3Dtimeout, check=3DTrue,<br>
=C2=A0*** 0626:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 **kwargs).stdout<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0627:<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0628:<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0629:class CompletedProcess(object):<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0630:=C2=A0=C2=A0=C2=A0 &quot;&quot;&quot;A proces=
s that has finished running.<br>
File: &#39;/usr/lib/python3.5/subprocess.py&#39;, lineno: 693, function: ru=
n<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0689:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if=
 &#39;stdin&#39; in kwargs:<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0690:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 raise ValueError(&#39;stdin and input arguments may n=
ot both be used.&#39;)<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0691:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 kw=
args[&#39;stdin&#39;] =3D PIPE<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0692:<br>
=C2=A0*** 0693:=C2=A0=C2=A0=C2=A0 with Popen(*popenargs, **kwargs) as proce=
ss:<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0694:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 tr=
y:<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0695:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 stdout, stderr =3D process.communicate(input, timeout=
=3Dtimeout)<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0696:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ex=
cept TimeoutExpired:<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0697:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 process.kill()<br>
File: &#39;/usr/lib/python3.5/subprocess.py&#39;, lineno: 947, function: __=
init__<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0943:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 startupi=
nfo, creationflags, shell,<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0944:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 p2cread,=
 p2cwrite,<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0945:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 c2pread,=
 c2pwrite,<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0946:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 errread,=
 errwrite,<br>
=C2=A0*** 0947:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 restore_signals, start_=
new_session)<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0948:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ex=
cept:<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0949:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 # Cleanup if the child failed starting.<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0950:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 for f in filter(None, (self.stdin, self.stdout, self.=
stderr)):<br>
=C2=A0=C2=A0=C2=A0=C2=A0 0951:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 try:<br>
File: &#39;/usr/lib/python3.5/subprocess.py&#39;, lineno: 1551, function: _=
execute_child<br>
=C2=A0=C2=A0=C2=A0=C2=A0 1547:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # The er=
ror must be from chdir(cwd).<br>
=C2=A0=C2=A0=C2=A0=C2=A0 1548:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 err_msg =
+=3D &#39;: &#39; + repr(cwd)<br>
=C2=A0=C2=A0=C2=A0=C2=A0 1549:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 else:<br>
=C2=A0=C2=A0=C2=A0=C2=A0 1550:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 err_msg =
+=3D &#39;: &#39; + repr(orig_executable)<br>
=C2=A0*** 1551:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 raise child_exceptio=
n_type(errno_num, err_msg)<br>
=C2=A0=C2=A0=C2=A0=C2=A0 1552:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 raise child_exception_type(er=
r_msg)<br>
=C2=A0=C2=A0=C2=A0=C2=A0 1553:<br>
=C2=A0=C2=A0=C2=A0=C2=A0 1554:<br>
=C2=A0=C2=A0=C2=A0=C2=A0 1555:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 de=
f _handle_exitstatus(self, sts, _WIFSIGNALED=3Dos.WIFSIGNALED,<br>
Exception: PermissionError: [Errno 13] Permission denied<br>
<br>
DEBUG: Python function do_licensesinfo finished<br>
ERROR: Function failed: do_licensesinfo</span><span lang=3D"EN-US" style=3D=
"font-size:10.0pt;font-family:&quot;Tahoma&quot;,sans-serif;color:black"><u=
></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Tahoma&quot;,sans-serif;color:black"><u></u>=C2=A0<u></u></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;color=
:black">So it looks like the invoked &#39;dnf&#39; can&#39;t open a file du=
e to permission issues.</span><span lang=3D"EN-US" style=3D"color:black"><u=
></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:black"><u></u>=
=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;color=
:black">But I never experienced any problems during my regular builds, whic=
h obviously also use &#39;<span class=3D"m_3057246812904299713spelle">image=
_list_installed_packages</span>&#39;.</span><span lang=3D"EN-US" style=3D"c=
olor:black"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:black"><u></u>=
=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;color=
:black">Does someone know why I encounter this error only, when calling &#3=
9;<span class=3D"m_3057246812904299713spelle">image_list_installed_packages=
</span>&#39; in my own recipe?</span><span lang=3D"EN-US" style=3D"color:bl=
ack"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:black"><u></u>=
=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:black"><u></u>=
=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Regards=
,</span><span style=3D"color:black"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:black"><u></u>=C2=A0<u></u></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Norman<=
/span><span style=3D"color:black"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:8.0pt;line-height:106%"><span=
 style=3D"font-size:10.0pt;line-height:106%;font-family:&quot;Arial&quot;,s=
ans-serif;color:black">Mit freundlichen Gr=C3=BC=C3=9Fen / Best regards<u><=
/u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:8.0pt;line-height:106%"><b><s=
pan style=3D"font-size:10.0pt;line-height:106%;font-family:&quot;Arial&quot=
;,sans-serif;color:black">Norman Stetter<br>
</span></b><span style=3D"font-size:10.0pt;line-height:106%;font-family:&qu=
ot;Arial&quot;,sans-serif;color:#97bf0d">SW ENWICKLUNG EMBEDDED SYSTEMS</sp=
an><span style=3D"font-size:8.0pt;line-height:106%;font-family:&quot;Arial&=
quot;,sans-serif;color:black"><br>
Garz &amp; Fricke GmbH<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:8.0pt;line-height:106%"><span=
 style=3D"font-size:8.0pt;line-height:106%;font-family:&quot;Arial&quot;,sa=
ns-serif;color:black"><br>
</span><span lang=3D"EN-US" style=3D"font-size:8.0pt;line-height:106%;font-=
family:&quot;Arial&quot;,sans-serif;color:black">21079 Hamburg<u></u><u></u=
></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:8.0pt;line-height:106%"><span=
 lang=3D"EN-US" style=3D"font-size:8.0pt;line-height:106%;font-family:&quot=
;Arial&quot;,sans-serif;color:black">Direct: +49 40 791899 - 477<br>
Fax: +49 40 791899 - 39<br>
<a href=3D"mailto:Norman.Stetter@garz-fricke.com" target=3D"_blank">Norman.=
Stetter@garz-fricke.com</a><br>
</span><span style=3D"font-size:8.0pt;line-height:106%;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black"><a href=3D"http://www.garz-fricke.com/" t=
itle=3D"www.garz-fricke.com" target=3D"_blank"><span lang=3D"EN-US" style=
=3D"color:black;text-decoration:none">www.garz-fricke.com</span></a></span>=
<span lang=3D"EN-US" style=3D"font-size:8.0pt;line-height:106%;font-family:=
&quot;Arial&quot;,sans-serif;color:black"><u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:8.0pt;line-height:106%"><span=
 style=3D"font-size:10.0pt;line-height:106%;font-family:&quot;Arial&quot;,s=
ans-serif;color:black">WE MAKE IT YOURS!<br>
</span><span style=3D"font-size:8.0pt;line-height:106%;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black"><img border=3D"0" width=3D"183" height=3D=
"31" id=3D"m_3057246812904299713Grafik_x0020_1" src=3D"cid:image001.jpg@01D=
480AD.2A332740"></span><span style=3D"font-size:10.0pt;line-height:106%;fon=
t-family:&quot;Arial&quot;,sans-serif;color:black"><br>
</span><span style=3D"font-size:8.0pt;line-height:106%;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black">Sitz der Gesellschaft: D-21079 Hamburg<br=
>
Registergericht: Amtsgericht Hamburg, HRB 60514<br>
Gesch=C3=A4ftsf=C3=BChrer: Matthias Fricke, Manfred Garz, Marc-Michael Brau=
n<br>
<br>
<img border=3D"0" width=3D"219" height=3D"79" id=3D"m_3057246812904299713Gr=
afik_x0020_2" src=3D"cid:image002.jpg@01D480AD.2A332740"><u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000791f59057b15c61c--

--000000000000791f5c057b15c61d
Content-Type: image/jpeg; name="image001.jpg"
Content-Disposition: inline; filename="image001.jpg"
Content-Transfer-Encoding: base64
Content-ID: <167309465ea4ce8e91>
X-Attachment-Id: 167309465ea4ce8e91

/9j/4AAQSkZJRgABAQEAYABgAAD/7QBkUGhvdG9zaG9wIDMuMAA4QklNBAQAAAAAACwcAVoAAxsl
RxwCAAACAAQcAj4ACDIwMTcwODI1HAI/AAswOTUyNDYrMDIwMDhCSU0EJQAAAAAAEM90ldQ+UsUF
pLPvuQOa/Bz/4QAsY29tLmFkb2JlLmNhcm91c2VsLnJlZmVyZW5jZV9zaXplAAAAAMsAAAAi/+EA
tEV4aWYAAE1NACoAAAAIAAQBEgADAAAAAQABAAABMQACAAAAJgAAAD4BMgACAAAAFAAAAGSHaQAE
AAAAAQAAAHgAAAAAQWRvYmUgUGhvdG9zaG9wIEV4cHJlc3MgOS4wIChXaW5kb3dzKQAyMDE3OjA4
OjI1IDExOjM5OjQ0AAACkAAABwAAAAQwMjMwkAQAAgAAABQAAACWAAAAADIwMTc6MDg6MjUgMDk6
NTI6NDYAAAD/4gxYSUNDX1BST0ZJTEUAAQEAAAxITGlubwIQAABtbnRyUkdCIFhZWiAHzgACAAkA
BgAxAABhY3NwTVNGVAAAAABJRUMgc1JHQgAAAAAAAAAAAAAAAAAA9tYAAQAAAADTLUhQICAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFjcHJ0AAABUAAAADNk
ZXNjAAABhAAAAGx3dHB0AAAB8AAAABRia3B0AAACBAAAABRyWFlaAAACGAAAABRnWFlaAAACLAAA
ABRiWFlaAAACQAAAABRkbW5kAAACVAAAAHBkbWRkAAACxAAAAIh2dWVkAAADTAAAAIZ2aWV3AAAD
1AAAACRsdW1pAAAD+AAAABRtZWFzAAAEDAAAACR0ZWNoAAAEMAAAAAxyVFJDAAAEPAAACAxnVFJD
AAAEPAAACAxiVFJDAAAEPAAACAx0ZXh0AAAAAENvcHlyaWdodCAoYykgMTk5OCBIZXdsZXR0LVBh
Y2thcmQgQ29tcGFueQAAZGVzYwAAAAAAAAASc1JHQiBJRUM2MTk2Ni0yLjEAAAAAAAAAAAAAABJz
UkdCIElFQzYxOTY2LTIuMQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAWFlaIAAAAAAAAPNRAAEAAAABFsxYWVogAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAA
AABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z2Rlc2MA
AAAAAAAAFklFQyBodHRwOi8vd3d3LmllYy5jaAAAAAAAAAAAAAAAFklFQyBodHRwOi8vd3d3Lmll
Yy5jaAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABkZXNjAAAA
AAAAAC5JRUMgNjE5NjYtMi4xIERlZmF1bHQgUkdCIGNvbG91ciBzcGFjZSAtIHNSR0IAAAAAAAAA
AAAAAC5JRUMgNjE5NjYtMi4xIERlZmF1bHQgUkdCIGNvbG91ciBzcGFjZSAtIHNSR0IAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAZGVzYwAAAAAAAAAsUmVmZXJlbmNlIFZpZXdpbmcgQ29uZGl0aW9uIGlu
IElFQzYxOTY2LTIuMQAAAAAAAAAAAAAALFJlZmVyZW5jZSBWaWV3aW5nIENvbmRpdGlvbiBpbiBJ
RUM2MTk2Ni0yLjEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHZpZXcAAAAAABOk/gAUXy4AEM8U
AAPtzAAEEwsAA1yeAAAAAVhZWiAAAAAAAEwJVgBQAAAAVx/nbWVhcwAAAAAAAAABAAAAAAAAAAAA
AAAAAAAAAAAAAo8AAAACc2lnIAAAAABDUlQgY3VydgAAAAAAAAQAAAAABQAKAA8AFAAZAB4AIwAo
AC0AMgA3ADsAQABFAEoATwBUAFkAXgBjAGgAbQByAHcAfACBAIYAiwCQAJUAmgCfAKQAqQCuALIA
twC8AMEAxgDLANAA1QDbAOAA5QDrAPAA9gD7AQEBBwENARMBGQEfASUBKwEyATgBPgFFAUwBUgFZ
AWABZwFuAXUBfAGDAYsBkgGaAaEBqQGxAbkBwQHJAdEB2QHhAekB8gH6AgMCDAIUAh0CJgIvAjgC
QQJLAlQCXQJnAnECegKEAo4CmAKiAqwCtgLBAssC1QLgAusC9QMAAwsDFgMhAy0DOANDA08DWgNm
A3IDfgOKA5YDogOuA7oDxwPTA+AD7AP5BAYEEwQgBC0EOwRIBFUEYwRxBH4EjASaBKgEtgTEBNME
4QTwBP4FDQUcBSsFOgVJBVgFZwV3BYYFlgWmBbUFxQXVBeUF9gYGBhYGJwY3BkgGWQZqBnsGjAad
Bq8GwAbRBuMG9QcHBxkHKwc9B08HYQd0B4YHmQesB78H0gflB/gICwgfCDIIRghaCG4IggiWCKoI
vgjSCOcI+wkQCSUJOglPCWQJeQmPCaQJugnPCeUJ+woRCicKPQpUCmoKgQqYCq4KxQrcCvMLCwsi
CzkLUQtpC4ALmAuwC8gL4Qv5DBIMKgxDDFwMdQyODKcMwAzZDPMNDQ0mDUANWg10DY4NqQ3DDd4N
+A4TDi4OSQ5kDn8Omw62DtIO7g8JDyUPQQ9eD3oPlg+zD88P7BAJECYQQxBhEH4QmxC5ENcQ9RET
ETERTxFtEYwRqhHJEegSBxImEkUSZBKEEqMSwxLjEwMTIxNDE2MTgxOkE8UT5RQGFCcUSRRqFIsU
rRTOFPAVEhU0FVYVeBWbFb0V4BYDFiYWSRZsFo8WshbWFvoXHRdBF2UXiReuF9IX9xgbGEAYZRiK
GK8Y1Rj6GSAZRRlrGZEZtxndGgQaKhpRGncanhrFGuwbFBs7G2MbihuyG9ocAhwqHFIcexyjHMwc
9R0eHUcdcB2ZHcMd7B4WHkAeah6UHr4e6R8THz4faR+UH78f6iAVIEEgbCCYIMQg8CEcIUghdSGh
Ic4h+yInIlUigiKvIt0jCiM4I2YjlCPCI/AkHyRNJHwkqyTaJQklOCVoJZclxyX3JicmVyaHJrcm
6CcYJ0kneierJ9woDSg/KHEooijUKQYpOClrKZ0p0CoCKjUqaCqbKs8rAis2K2krnSvRLAUsOSxu
LKIs1y0MLUEtdi2rLeEuFi5MLoIuty7uLyQvWi+RL8cv/jA1MGwwpDDbMRIxSjGCMbox8jIqMmMy
mzLUMw0zRjN/M7gz8TQrNGU0njTYNRM1TTWHNcI1/TY3NnI2rjbpNyQ3YDecN9c4FDhQOIw4yDkF
OUI5fzm8Ofk6Njp0OrI67zstO2s7qjvoPCc8ZTykPOM9Ij1hPaE94D4gPmA+oD7gPyE/YT+iP+JA
I0BkQKZA50EpQWpBrEHuQjBCckK1QvdDOkN9Q8BEA0RHRIpEzkUSRVVFmkXeRiJGZ0arRvBHNUd7
R8BIBUhLSJFI10kdSWNJqUnwSjdKfUrESwxLU0uaS+JMKkxyTLpNAk1KTZNN3E4lTm5Ot08AT0lP
k0/dUCdQcVC7UQZRUFGbUeZSMVJ8UsdTE1NfU6pT9lRCVI9U21UoVXVVwlYPVlxWqVb3V0RXklfg
WC9YfVjLWRpZaVm4WgdaVlqmWvVbRVuVW+VcNVyGXNZdJ114XcleGl5sXr1fD19hX7NgBWBXYKpg
/GFPYaJh9WJJYpxi8GNDY5dj62RAZJRk6WU9ZZJl52Y9ZpJm6Gc9Z5Nn6Wg/aJZo7GlDaZpp8WpI
ap9q92tPa6dr/2xXbK9tCG1gbbluEm5rbsRvHm94b9FwK3CGcOBxOnGVcfByS3KmcwFzXXO4dBR0
cHTMdSh1hXXhdj52m3b4d1Z3s3gReG54zHkqeYl553pGeqV7BHtje8J8IXyBfOF9QX2hfgF+Yn7C
fyN/hH/lgEeAqIEKgWuBzYIwgpKC9INXg7qEHYSAhOOFR4Wrhg6GcobXhzuHn4gEiGmIzokziZmJ
/opkisqLMIuWi/yMY4zKjTGNmI3/jmaOzo82j56QBpBukNaRP5GokhGSepLjk02TtpQglIqU9JVf
lcmWNJaflwqXdZfgmEyYuJkkmZCZ/JpomtWbQpuvnByciZz3nWSd0p5Anq6fHZ+Ln/qgaaDYoUeh
tqImopajBqN2o+akVqTHpTilqaYapoum/adup+CoUqjEqTepqaocqo+rAqt1q+msXKzQrUStuK4t
rqGvFq+LsACwdbDqsWCx1rJLssKzOLOutCW0nLUTtYq2AbZ5tvC3aLfguFm40blKucK6O7q1uy67
p7whvJu9Fb2Pvgq+hL7/v3q/9cBwwOzBZ8Hjwl/C28NYw9TEUcTOxUvFyMZGxsPHQce/yD3IvMk6
ybnKOMq3yzbLtsw1zLXNNc21zjbOts83z7jQOdC60TzRvtI/0sHTRNPG1EnUy9VO1dHWVdbY11zX
4Nhk2OjZbNnx2nba+9uA3AXcit0Q3ZbeHN6i3ynfr+A24L3hROHM4lPi2+Nj4+vkc+T85YTmDeaW
5x/nqegy6LzpRunQ6lvq5etw6/vshu0R7ZzuKO6070DvzPBY8OXxcvH/8ozzGfOn9DT0wvVQ9d72
bfb794r4Gfio+Tj5x/pX+uf7d/wH/Jj9Kf26/kv+3P9t////4RldaHR0cDovL25zLmFkb2JlLmNv
bS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6
a2M5ZCI/Pg0KPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyIgeDp4bXB0az0iQWRv
YmUgWE1QIENvcmUgNS41LWMwMDIgMS4xNDgwMjIsIDIwMTIvMDcvMTUtMTg6MDY6NDUgICAgICAg
ICI+DQoJPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJk
Zi1zeW50YXgtbnMjIj4NCgkJPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1w
PSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczpkYz0iaHR0cDovL3B1cmwub3Jn
L2RjL2VsZW1lbnRzLzEuMS8iIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8x
LjAvbW0vIiB4bWxuczpzdEV2dD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jl
c291cmNlRXZlbnQjIiB4bWxuczpzdFJlZj0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NU
eXBlL1Jlc291cmNlUmVmIyIgeG1sbnM6ZXhpZj0iaHR0cDovL25zLmFkb2JlLmNvbS9leGlmLzEu
MC8iIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIEV4cHJlc3MgOS4wIChXaW5kb3dz
KSIgeG1wOkNyZWF0ZURhdGU9IjIwMTctMDgtMjVUMDk6NTI6NDYrMDI6MDAiIHhtcDpNb2RpZnlE
YXRlPSIyMDE3LTA4LTI1VDExOjM5OjQ0KzAyOjAwIiB4bXA6TWV0YWRhdGFEYXRlPSIyMDE3LTA4
LTI1VDExOjM5OjQ0KzAyOjAwIiBkYzpmb3JtYXQ9ImltYWdlL2pwZWciIHhtcE1NOkluc3RhbmNl
SUQ9InhtcC5paWQ6NjZmZWViMTUtOTllZC1hZDQ0LWExNmUtZmVhY2YyODNhM2UxIiB4bXBNTTpE
b2N1bWVudElEPSJ4bXAuZGlkOjY2ZmVlYjE1LTk5ZWQtYWQ0NC1hMTZlLWZlYWNmMjgzYTNlMSIg
eG1wTU06T3JpZ2luYWxEb2N1bWVudElEPSJ4bXAuZGlkOjc3N2IzNTcyLTdiNjAtNWI0Ny1hODEw
LTEwYTJiZDhjYjYzOCIgZXhpZjpDb2xvclNwYWNlPSIxIj4NCgkJCTx4bXBNTTpIaXN0b3J5Pg0K
CQkJCTxyZGY6U2VxPg0KCQkJCQk8cmRmOmxpIHN0RXZ0OmFjdGlvbj0iY3JlYXRlZCIgc3RFdnQ6
aW5zdGFuY2VJRD0ieG1wLmlpZDo3NzdiMzU3Mi03YjYwLTViNDctYTgxMC0xMGEyYmQ4Y2I2Mzgi
IHN0RXZ0OndoZW49IjIwMTctMDgtMjVUMDk6NTI6NDYrMDI6MDAiIHN0RXZ0OnNvZnR3YXJlQWdl
bnQ9IkFkb2JlIFBob3Rvc2hvcCBDQyAyMDE3IChXaW5kb3dzKSIvPg0KCQkJCQk8cmRmOmxpIHN0
RXZ0OmFjdGlvbj0iY29udmVydGVkIiBzdEV2dDpwYXJhbWV0ZXJzPSJmcm9tIGltYWdlL2dpZiB0
byBpbWFnZS9wbmciLz4NCgkJCQkJPHJkZjpsaSBzdEV2dDphY3Rpb249InNhdmVkIiBzdEV2dDpp
bnN0YW5jZUlEPSJ4bXAuaWlkOmI3ZWQwOGM2LWRjMTMtNDA0NS1hYzdhLTIyZjYxOTYwYzE1MiIg
c3RFdnQ6d2hlbj0iMjAxNy0wOC0yNVQwOTo1NTo0OCswMjowMCIgc3RFdnQ6c29mdHdhcmVBZ2Vu
dD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTcgKFdpbmRvd3MpIiBzdEV2dDpjaGFuZ2VkPSIvIi8+
DQoJCQkJCTxyZGY6bGkgc3RFdnQ6YWN0aW9uPSJkZXJpdmVkIiBzdEV2dDpwYXJhbWV0ZXJzPSJj
b252ZXJ0ZWQgZnJvbSBpbWFnZS9wbmcgdG8gaW1hZ2UvanBlZywgc2F2ZWQgdG8gbmV3IGxvY2F0
aW9uIi8+DQoJCQkJCTxyZGY6bGkgc3RFdnQ6YWN0aW9uPSJzYXZlZCIgc3RFdnQ6aW5zdGFuY2VJ
RD0ieG1wLmlpZDo2NmZlZWIxNS05OWVkLWFkNDQtYTE2ZS1mZWFjZjI4M2EzZTEiIHN0RXZ0Ondo
ZW49IjIwMTctMDgtMjVUMTE6Mzk6NDQrMDI6MDAiIHN0RXZ0OnNvZnR3YXJlQWdlbnQ9IkFkb2Jl
IFBob3Rvc2hvcCBFeHByZXNzIDkuMCAoV2luZG93cykiIHN0RXZ0OmNoYW5nZWQ9Ii8iLz4NCgkJ
CQk8L3JkZjpTZXE+DQoJCQk8L3htcE1NOkhpc3Rvcnk+DQoJCQk8eG1wTU06RGVyaXZlZEZyb20g
c3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpiN2VkMDhjNi1kYzEzLTQwNDUtYWM3YS0yMmY2MTk2
MGMxNTIiIHN0UmVmOmRvY3VtZW50SUQ9ImFkb2JlOmRvY2lkOnBob3Rvc2hvcDpiZWQzYjdjNi04
OTZhLTExZTctOWE5NC04MTVmZTgyYjY3ZjYiIHN0UmVmOm9yaWdpbmFsRG9jdW1lbnRJRD0ieG1w
LmRpZDo3NzdiMzU3Mi03YjYwLTViNDctYTgxMC0xMGEyYmQ4Y2I2MzgiLz4NCgkJPC9yZGY6RGVz
Y3JpcHRpb24+DQoJPC9yZGY6UkRGPg0KPC94OnhtcG1ldGE+DQogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAog
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAK
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIAogICAgICAgIDw/eHBhY2tldCBlbmQ9J3cnPz7/2wBDAAIBAQIBAQICAgICAgICAwUDAwMD
AwYEBAMFBwYHBwcGBwcICQsJCAgKCAcHCg0KCgsMDAwMBwkODw0MDgsMDAz/2wBDAQICAgMDAwYD
AwYMCAcIDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAz/
wAARCAAfALcDASIAAhEBAxEB/8QAHQAAAgEFAQEAAAAAAAAAAAAABwkIAAQFBgoCA//EAD4QAAED
AwMDAgUBBAUNAAAAAAECAwQFBhEHCBIACSETMQoUIjJBURUjQmEWGXGR0yQ3Q0RXYmSBgoOSlqP/
xAAaAQADAAMBAAAAAAAAAAAAAAAAAQIDBQgH/8QAJxEAAQMEAQMDBQAAAAAAAAAAAQACEgMEBREh
BjFBExRRQmGx0fD/2gAMAwEAAhEDEQA/AHBbqe5FoVsirMGm6p6n25Z1TqbXrRoMl1b0tbWSA4WW
krWlGQQFqASeJ8nB63zQLcVYu6XTeHeGnN10W8LbmqKGp9MkB5tKxjk2ofchYyMoUEqGRkdJL7ce
hui+9reVvd153RQ6bdlFsG65kVtdxOLcptFgplS20H0wfZqOwy0jlnglOQAolXTBez1WNmWlzF1a
cbWbut+uTKnKkXVVo7Mx2bO9JToQ2guuJ5liOlaGWkEkpSASVrU4tRoeEi1SW1n3i6Y7etSrHs+9
bypNt3NqRIciW1T5RX6lVdbU2laUFKSkYU62MqIBKh7/AI2zVbVC39ENOa5d12VRiiW1bMJyo1Oe
+FFuHHbTyWtXEE4SBnwD1zs97C7r6329x3cBqDYMxRouzCjUxiG6hKziRHnNmSUjOA4Jq5QUf426
eP08Nq3i7h6fu57AGoWplLWhyHeulEqqYGP3bi4h9RBx+UuBaSPwU4/HQWoitio3fq2e1yqR4sfX
2yfWlLShsufMMoJV7ZWtoJSP5kgD8no+a17o9PdvGhknUy8btpVFsGImM45XeRkRCiQ62ywpKmgr
kla3WwFJBH1A5x5659do7vb0PZwxrDHtBWvQoVU9cwA+m5Pm/We+SLZR9HqcSzgH6OIwoFOQWF/D
8bblbmOxjbdia72wLntGtVOU9TqRWUuem9Tm5aX4uASFBpLqCpsA44hOMjoLQnEI9O/EA7N2ElSt
e7RSlIKj+5mew/7PUt7XuKDd9tU+rU2S3MptVjNzIj6AeL7LiQtCxnzhSVA+f165+t13b50X3194
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

--000000000000791f5c057b15c61d
Content-Type: image/jpeg; name="image002.jpg"
Content-Disposition: inline; filename="image002.jpg"
Content-Transfer-Encoding: base64
Content-ID: <167309465ea5b006a2>
X-Attachment-Id: 167309465ea5b006a2

/9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAoHBwgHBgoICAgLCgoLDhgQDg0NDh0VFhEYIx8lJCIf
IiEmKzcvJik0KSEiMEExNDk7Pj4+JS5ESUM8SDc9Pjv/2wBDAQoLCw4NDhwQEBw7KCIoOzs7Ozs7
Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozv/wAARCABPANsDASIA
AhEBAxEB/8QAGwAAAQUBAQAAAAAAAAAAAAAABAACAwUGBwH/xAA6EAABAwMCBAMGAgkFAQAAAAAB
AgMEAAUREiEGMUFREyJxBxQyYYGRQqEVFiNSYnKxwdEkQ3OC4fD/xAAaAQADAQEBAQAAAAAAAAAA
AAAAAQIDBAYF/8QAJhEAAgICAQQBBAMAAAAAAAAAAAECEQMhEgQTMUFxImGB0QUyUf/aAAwDAQAC
EQMRAD8A3nEvEb0OWzaLaEqnSSBqIyGgTgHHeobhYfdlMyDIdkE+VwvLKsnuO3pWTkzAxxTdJypj
AkJccSwCVeRWdIPLoM/WrLhua4ovW5yc28JKSpsFaiQ4Nwdx1xXHN26ZxPInOpfg2ERpUeOFtOEY
/CTt9qsIklEprUnmDhQ7Gsk1dgtKWkyGipR0gZO5+1F8LzC7dJjPjNuAIBIQScEHHanjybSRvHIr
SRqdXSqW+8RNWOZaYq4y3jc5QjJUlQHhk9T3rO8QKkT+Ll29bDkllqOFNMJk+CFE81Z6mqe5tzm1
8HtXBwLcbvehB8UOHRtgFQ6jcfSt1O5VR3TwcIKbfmtfJ1alXEnG7vxJceIJHuz7twiy1tsP/pQR
hBCT5cNnmO561avJe4k42t1k4nmOMx27S2+GWZGhEh8gajqSd+vLtVmB0mRdoMW5xba9ISmXLCiy
1gkrCRkn0FH1ya+8NWdHtF4eiB+QIsqK5qX74vPkThOleduQ5c6mt9tcvHHnEy3psxTNpfbfjRW3
iEKcCcpyOo8uMfOgDqdKuHtpYlez2VxjJvkpHEKHFKS4JRT4awvAbCM4xjpirkRn+KfaBAiXOVLZ
ZkWFqRKjsvKbC1HmDg7bnP0oA6JfLo9Z7f71Htkq4r1pR4EVOpeD19BViFZSDjpXEHJ02P7M7pFR
MkYg3wR2Fl060t6h5c88VopEWNxP7Srna7/NfbiQYraocVMgspVkAqXsRk7/AP2KAOm4NeVyfilc
G63O7txIMiQq0RkpclPXUsNsEIyktpHxH5nma3HAk1+48EWmXKdU8+5HGtxW5UQSMn57UAaGlWQX
qjT7nMs7kgsQYTwfU48pxD0j4kgaid04OSP3gOm0sCKWJ0WHGuEoon21TjznjFatYKMOjVnBOtXL
bl2oA1VeVz9tyZLtdkjtNybm57k645GEpTJOCAlxTmRkg7YPfPStfw88JPD8F0yVSVFhIU8tJClq
AwSQeuQaALIDNOpUqAFSppUlIyogD5mozKjg4L7QP84qXJLyBNSpiXG1/CtKvQ5p9O0wFSpUqYHH
+PbO9auIHJyUkxZytYWBslf4kn+tU8C4LiSWZLZ87KwsfQ126ZCjT4q4sthD7LgwpCxkGsbK9ltu
WsqiXCTGSfwKAcA9ORrGeO3o5MvT8naPbpCtVtgO8SR3FEvN6mG8jSFrHMemScdMUXwDaHokBydJ
SUOSsaEnmEDkT60Ra+CoMBDKJMmRPSwrU02+r9mg9wgbfetMnFOONJ2XHElLlRluJZ3DibgIN5iq
debiLlpXo/AnmkKBB1HBwOtQsTuC1woK3fdmUREpmR2ngQtkqwQcfveYbbncVcXLhu23aaiZMaWt
1st6cLIHkUVDb1Jz3FBfqLZgh1CEvoS8yGlgLByAAM7g74SBmtKV2dPKTVXoCu0TgC6THJt0ZgOS
EuBlx1WpJK8Z0qxjOBzzy64pnFLvBy5Crbe7WH126EJLQDf+3nSEIIIOcgeWrBXAtlceU+RIK9QI
UXM4ATpxgjBBHMnJPei7jwraLrcET5jK1vo0acLIA0hWNv8AufsO1MRRSv1Iulviw7hBjiFFb/0x
dOAjZGUDB1ZGtAIo0XvhSzOuXCGWS7OLPjuMAklKjpSpXp25/KpmuCbO3IQ8kSf2ZSUIL50pI0b4
7nwkZ9KezwdamHw617wkB1DykB46VrQrUlRHcHb0oAq3YXs6cuark6xbFStKZJWeRBwQrHIncHln
etFDjWefLRxDEaZdfcZ8JEpPMoz8P3qvY4Hs0d3xGm3RsjI8TOSkghXLOfKBzqyttobta3fAfeLK
/hZWrKUEqUtRHzJWfsKAMrFncDT4D8b3FtqI+4uU8h5sgF1KwjJAJJUSQRjmDRl6RwLe0Nyrr+j5
WgFCHNR1YAB0gp3Oy07fxUV+ollS8h5pL7TzbSW0OoeIUnSrUFD+LJxnttSVwNYtKkojrQS222FJ
cOU6DkKGfxZxk9cb0AV8hj2eSrky5IRbHZSUIbQTk5ThIQD0Oyk8+WRRtm4k4ajWVhuI+zAjNHwx
HUcFoknbH0Uc8tjRA4Os4BGh3Cs5w5jmGweX/Ej8+9QfqJZjgq95WpJGha3tRQnzeQZGNPnVt86A
Gsu8NWa2S7nb21ux4OtDqYynHQDnzAJzj1+tPsj9jj3eVBgwVxX22ULK1kFJbJ8oB1HSMnZO3cCr
NuyQmrM/aUJWIr4dC06t8OElWD0+I1Czw3bW5j0p1C5S3G0taZBC0pQDkADHfvk0AUt1uHC0IqhS
oToNuShDWgFvIdz5UL1DI8pzk42rVwW2GoLDcZpLTKWx4baQAEpxsNtqq7hwra7iVKdbW0otobSW
V6PDSgqxpHIfGoehoKfdm4kdFttnkaYQGgsHkAMAA/3rHNmhhjykJui4n3qJAygkuOj8COnr2rPy
uIZ0gkNqDCOyOf3qr57ncnmalbjPu6QhpR1glPzA54r4eXrM2V1HS+xm5NjHHXXSVOOLWT+8ommY
FTR4zkh0tN4CwkqwrbOBnHrRkWHFSGXnl60PNEoCknTrB3Scb1hGE5iSsrgSk5SSD8jijY13uEUj
RIUpI/CvzCpJEZEdTzKlsJDiA8hRQQR/CB0+tV1Dc8T06YbRqIPErLpCJSPBV++N0n/FXaXEqSFJ
IUDyINc8qRLzqEhKHFBI5AE124v5GcVUlZSkdArykTgZoR1852z9BX2zVImcd05x0oR68RouErUV
OHfSB070BebvFtMFUySVrOPI0ndTh7Af36VknOJrdDDqnkPiXJJV5jlLaTyHMEYFCT5b8A68G7Tf
7eUgqe055kjIHrii2p8R7HhyWl55YVXMLGiEgTZEu563nHdWhQ0rKANgknbHp1zUirfElSkyY/it
PgJdyk5CsfhJ5fTrWnHRm5NPZ1MHPKm1zhu+/ot0JcuBZWs7JUSEJHT69zyqyY4nuRbKvFjv7+XC
cZT0Oc71LixqX+m1pVk2uMEtgrlMrQknGWhnQfnk9edHN8V2sjKpqUjGcLQUmpdopNP2X6adQDF3
gOhBTJRlZwkE8zR2od6YHtKlSoAbQ0tT7bJVHQhxY30KONXp86JrypatUMzw4pKSUvQilQOCAvl9
xUzfFEM/Gy8j6A1Ld7KickvMgIfA59F/I/5rKOIW04ptxJStJwQelfIzZuowSpu18GbbRe3biBt+
L4MJSxr+NRGCB2FVjNtX4waeOkFlTiFJ3CgBnnQdWNtuSIyFMyElbelXhqHNBIwcfI1yd3vTvI/0
TdvYmbe26+Cs+G0trxW0+IMq6Y1HbNTsIMEOLSlIcYKXmzqCtbR2IzyoBE5aI7LPhoUWFFSFKGdj
zGKQEi5SSCsKc0kjOwwByH+KIzgq4LYWh8h1LNx95iv+J5/ESSDkfI5pr1yedCQylEdDaitIaGME
8zmmOx9ENiSlZUl3KVDHwqHT7VdxX2zEjLBUGnElpTDTIIK+RJ/I08cZTbV17BFO/DcbZ8eQ+jxH
AFJQValqB6/Khauo8n3ZXu0iWylqMotrQUEl1PrVW57v7s2W9Qe1q1gnI09Kzy44raYNENKnrZdb
Qla2loSv4VKSQDTKwaa8klvx7xO9wvbG5SI5eQ6vw1FKtJQSDgjY9jWfs/tJj3i2uIjQnY0qM2XF
tatY0JwNlHuSMk9M1r+JOGI3Ekb3ab+0ZBCg2SU4UM7gjfr86xjnswVbY9x/RfiOOS4imEoWtJTk
kEEnAPSvWnRZib1LvV3uRuTyXZDJSRqSrKUjO2B2qBN0cQwYpt6ZUgn9g68gkM775z0qykWbjKzv
hx2G6ttoEJCka0DoD06fao/1wuURl4SrU0pWNtSVJAPp/wC1sp/TxJCkxZc9/VDjIZjMRyQ8tRwr
HPcZ1Ek1bCQLbw+3MkhbuolPhpTqIOOw5J25nvVdG4msaoiWZCpIcQMkrb2Ku/lyBvy22qd1djfY
ceTdUO68F5IIU452SOWO2wpJfchxv4MVNvi52oMMqbdeUcgdM9BW9t1uQ7AgNPh3xWmUnxUqGDsB
owDk+mKmtvsujNMKkykTYzi0jSklKtORnH54+lXljscODJRMkSFMyEHyMScAIwMA5IGT9dqzUkVT
Y6bwxdZLbam5UbZO7LyVJIP8wyPy2oKVYrlbIKkohCShXmecZUkkY6YJG1a+VcXY7Bd8FmUMgYbd
CDjvuSO3WquVMfvbAbYgvtxgcuJWQCs9Bzxgc/ntTUinFUZy2RnLk4lhbLikPEJ8NSN0JzuT2/8A
PnWiXwo7DSpcG7S2AN8IdX/Q5H5Uba1RbbBefkZadbTl7WN0p6Db7450+PxJY7gCYtyZdIz5Uk5O
OeBjJpuVsIw1so/eOI4sxEVq5rlDUQsLQkkf9k4KfqKuYdxnie3byovOLTrKlpxoTnG/zPPFEPTI
7LDkxawY7IOry+Yntv16epqWyQnkNOTpgxKlHWpOdmk/hQPQfnUtJjqi4x2rzGKdSoENxWd4pSyk
Mq0DxlE+brpFaSspxSvM9lHRLefua4uuaWFkvwUlSMBtT7YeJDZUAojmBUdI155OmZlwq1FqPMYc
DZcB8Rg6hrUkc9u2KlLCGYqZLbCGXGdDyCnOFJ6pKj8RxVa5cHVPsyGwG3mmwgr56umT9KGHiOlL
Y1LOcJSN/sK63lgv6oq0HvSoiA+y2FPR31eIkfAWlf3oRmZJYZU0y8ptKjnCds0Q1blKZkl4ll5l
IWELHxJ67UW7FhyijwmlIdlMlxtQVhIUOaMfQ0uGSW/Atgce2qkMhz3htLjgUpts5yvHPfpRTUWK
4xGZSynVIZKm3iTnxR+H0oS2utMPF1clbC04xpb1ah1FPF0caW4GG2w2XCtoKTktZ7dqIPHGKb/Y
1QfJC5LEp1RPu7zKXUKJ2bcG2n+1UNe5PIkkZzzryscuTuO6Jbs6HS60qVepNx9ByrVb5o/1MJh3
5qbGfvRWcV7qpiMpcPZtwzPKlKgllSurSsf1rMzvZDEQ+FxJyyEqCtDoyDg5xXUCc14Ug0gRlXn7
6xjTDDmF6iUP6tuwB3FCu8Qy4jC/eG5ZIScNvMA5ONhmtippJ6Uz3VJ+I7dqz7aK/Jwo8cXCOpTc
i3oThfxIBTkZ7HI3FHj2hvuKiRLWh1l159KV68KATnfGOprrcqw26YnD8KO7/M2M/eqN7gGxJeEh
qKYriTlK21Zwe+Dmt7Yqfo5/buNbquzz2prypviTG2EJWfgCgc+b+9aiwQIFsYevDMQLmEluMwFa
lA/PHfGd+QzUr3s7YS740ZxnTrC1Nlvw0rI6nT9uVGOWu7K8NmXHiLQlafDdYbCFoI5ZOrcdOVT6
FTuyLhqwrkTkypAebbbOtxhSsoU7nIUR3Hf0rdgYoeFFTEjIaSc4GSruepomgBUqVKgBVk+KBi5N
nu0P6mtZWa4ra88d71Qf61xdcrwMl+DPVPDQ07MbbfJDa1BKiDioKX5V56LppmZdyrcyGd4zbK2X
QXEtu6leF1Uae74MFwSVRUMhp7Q2W/8AdbUDuPmO9ASLq46FJQy2048kJccAypf16UBucZJOOVdk
88Iv6UVa9Fk7cG2Pdkx3DILIWlS3U41JV+E0GuS4tKUA6G0KKkITtoz2qGlXNLLKRNsVKlSrMQqV
KlQB/9k=

--000000000000791f5c057b15c61d
Content-Type: image/jpeg; name="image002.jpg"
Content-Disposition: inline; filename="image002.jpg"
Content-Transfer-Encoding: base64
Content-ID: <>
X-Attachment-Id: 

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
KlQB/9k=

--000000000000791f5c057b15c61d--
