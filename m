Return-Path: <ross.burton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6FD0E006CC
	for <yocto@yoctoproject.org>; Sun, 13 Jan 2013 08:44:53 -0800 (PST)
Received: from mail-fa0-f69.google.com ([209.85.161.69])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 13 Jan 2013 08:43:49 -0800
Received: by mail-fa0-f69.google.com with SMTP id v1so3216270fav.4
	for <yocto@yoctoproject.org>; Sun, 13 Jan 2013 08:44:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:x-received:date:from:to:cc:message-id:in-reply-to
	:references:subject:x-mailer:mime-version:content-type
	:x-gm-message-state;
	bh=vMgBeT1GN9Vdcj7c7RE8Bq7ib0zfV8xcGE9lSuyEPX4=;
	b=P55FGuUMiNmhVx3PJNyCUeZimq1uEBj6qF4/rTy/0EBA5wJinpAEr/ioewmQUtUsO0
	QJQnH976J6P+S3uRybFp1wm4BAuuvZuQ9tsOjii0wm21krfw9OeJP3Pz5OmqecvebXPK
	hV85queaKXOda4JEwNDhuM37fq5q2cRTB0oMWueSgRwn6s1bRtk5EOIXf5NbP0O41bUX
	LCz6Qsr+YNXGi+e4A3urc2HkMwkOOQ0p98HHAjIrh2tz6JSu1hxtfIVGs7StnZaTavmR
	IZceopO56k+utYnB/EIbhGxmzFCTidtw77R6vCMPWkOuKGISqfAEiCVRbceBfbrkOS5X
	r3Ug==
X-Received: by 10.180.85.165 with SMTP id i5mr8249395wiz.11.1358095491055;
	Sun, 13 Jan 2013 08:44:51 -0800 (PST)
X-Received: by 10.180.85.165 with SMTP id i5mr8249383wiz.11.1358095490817;
	Sun, 13 Jan 2013 08:44:50 -0800 (PST)
Received: from [192.168.1.11] (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id u6sm9758777wif.2.2013.01.13.08.44.49
	(version=SSLv3 cipher=RC4-SHA bits=128/128);
	Sun, 13 Jan 2013 08:44:50 -0800 (PST)
Date: Sun, 13 Jan 2013 16:44:45 +0000
From: Ross Burton <ross.burton@intel.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Message-ID: <211E2BEE5356446CB425C4E2514B1285@intel.com>
In-Reply-To: <1358094195-23815-2-git-send-email-andrei@gherzan.ro>
References: <1358094195-23815-1-git-send-email-andrei@gherzan.ro>
	<1358094195-23815-2-git-send-email-andrei@gherzan.ro>
X-Mailer: sparrow 1.3.4 (build 507.54)
MIME-Version: 1.0
X-Gm-Message-State: ALoCoQn8H5iqiyOGgzRr+w2aOIxxZnhe0Y7D6rtlpa7Kg3bgLEQsaL0iwEoEmr3+f0rl+/0yE8UgWbBUZ8Hvhk6JXrHGp320vbovIEiR2ecS0BhpqKQO9WWAEJmqTmdsr2ad5c5GvQskJI6tuxQrd8VazGiKMDniRw==
Cc: yocto@yoctoproject.org
Subject: Re: [meta-intel][PATCH 2/2] fri2.conf: mesa-dri was updated to 9.0.1
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
X-List-Received-Date: Sun, 13 Jan 2013 16:44:54 -0000
Content-Type: multipart/alternative; boundary="50f2e47e_74b0dc51_53e"

--50f2e47e_74b0dc51_53e
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Sorry for top posting... Have you verified that GL still works with this major version bump? 

Ross-- 
Ross Burton
Sent with Sparrow (http://www.sparrowmailapp.com/?sig)


On Sunday, 13 January 2013 at 16:23, Andrei Gherzan wrote:

> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
> meta-fri2/conf/machine/fri2.conf | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/meta-fri2/conf/machine/fri2.conf b/meta-fri2/conf/machine/fri2.conf
> index 0efba2a..07ad750 100644
> --- a/meta-fri2/conf/machine/fri2.conf
> +++ b/meta-fri2/conf/machine/fri2.conf
> @@ -27,7 +27,7 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
> "
> PREFERRED_VERSION_xserver-xorg ?= "1.9.3"
> -PREFERRED_VERSION_mesa-dri ?= "8.0.4"
> +PREFERRED_VERSION_mesa-dri ?= "9.0.1"
> PREFERRED_VERSION_xf86-input-evdev ?= "2.6.0"
> PREFERRED_VERSION_emgd-driver-bin ?= "1.14"
> -- 
> 1.7.10.4
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> 
> 



--50f2e47e_74b0dc51_53e
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline


    <div id=3D=22reply-content=22>
        Sorry for top posting... Have you verified that GL still works wi=
th this major version bump=3F
    </div><div id=3D=22reply-content=22><br></div>
    <div id=3D=220E6E1AB388E44AEDBD9727BE2ABA7C8C=22><div>Ross</div>--&nb=
sp;<br>Ross Burton<br><div>Sent with <a href=3D=22http://www.sparrowmaila=
pp.com/=3Fsig=22>Sparrow</a></div><div><br></div></div>
    =20
    <p style=3D=22color: =23A0A0A8;=22>On Sunday, 13 January 2013 at 16:2=
3, Andrei Gherzan wrote:</p>
    <blockquote type=3D=22cite=22 style=3D=22border-left-style:solid;bord=
er-width:1px;margin-left:0px;padding-left:10px;=22>
        <div id=3D=22quoted-message-content=22><div><div>Signed-off-by: A=
ndrei Gherzan &lt;andrei=40gherzan.ro&gt;</div><div>---</div><div> meta-f=
ri2/conf/machine/fri2.conf =7C    2 +-</div><div> 1 file changed, 1 inser=
tion(+), 1 deletion(-)</div><div><br></div><div>diff --git a/meta-fri2/co=
nf/machine/fri2.conf b/meta-fri2/conf/machine/fri2.conf</div><div>index 0=
efba2a..07ad750 100644</div><div>--- a/meta-fri2/conf/machine/fri2.conf</=
div><div>+++ b/meta-fri2/conf/machine/fri2.conf</div><div>=40=40 -27,7 +2=
7,7 =40=40 XSERVER =3F=3D =22=24=7BXSERVER=5FIA32=5FBASE=7D =5C</div><div=
>            =22</div><div> PRE=46ERRED=5FVERSION=5Fxserver-xorg =3F=3D =22=
1.9.3=22</div><div>-PRE=46ERRED=5FVERSION=5Fmesa-dri =3F=3D =228.0.4=22</=
div><div>+PRE=46ERRED=5FVERSION=5Fmesa-dri =3F=3D =229.0.1=22</div><div> =
PRE=46ERRED=5FVERSION=5Fxf86-input-evdev =3F=3D =222.6.0=22</div><div> PR=
E=46ERRED=5FVERSION=5Femgd-driver-bin =3F=3D =221.14=22</div><div>-- </di=
v><div>1.7.10.4</div><div><br></div><div>=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F</div><div>yocto mailing list</div><div>=
yocto=40yoctoproject.org</div><div>https://lists.yoctoproject.org/listinf=
o/yocto</div></div></div>
        =20
        =20
        =20
        =20
    </blockquote>
    =20
    <div>
        <br>
    </div>

--50f2e47e_74b0dc51_53e--
