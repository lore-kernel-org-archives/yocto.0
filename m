Return-Path: <brduffy@gmail.com>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58132E011C6
	for <yocto@yoctoproject.org>; Sat,  3 Sep 2011 11:43:20 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wyg30 with SMTP id 30so4474285wyg.35
	for <yocto@yoctoproject.org>; Sat, 03 Sep 2011 11:43:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=qEghy6/pAJPIirhtK8BCspnIE5t48OWmgaCFf4aVotg=;
	b=CAWAsJZRxStmP8fuFCEYu8rx+CUnYH846o+cJA2ao7II0MZy37kSGkRUk+UrgUocID
	rAqlCKrXoufficJjS98My7Fs6xY0FyYg4x5VbhwIJy7tCnUOpSXme67yrroRtOQSIiEk
	T3f35nQ+mEcowqN/OLwU2wpEJaeWocDvmX7RM=
MIME-Version: 1.0
Received: by 10.216.169.73 with SMTP id m51mr782088wel.109.1315075399033; Sat,
	03 Sep 2011 11:43:19 -0700 (PDT)
Received: by 10.216.168.147 with HTTP; Sat, 3 Sep 2011 11:43:18 -0700 (PDT)
Date: Sat, 3 Sep 2011 14:43:18 -0400
Message-ID: <CAHrDPkp-=NLeqi-3MbM7EffJDGX=mHy0_Rkw4faz-Jgi8ro4rw@mail.gmail.com>
From: Brian Duffy <brduffy@gmail.com>
To: yocto@yoctoproject.org
Subject: Yocto 1.1 Beta Questions
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
X-List-Received-Date: Sat, 03 Sep 2011 18:43:20 -0000
Content-Type: multipart/alternative; boundary=0016367fb52d03248c04ac0dda7f

--0016367fb52d03248c04ac0dda7f
Content-Type: text/plain; charset=ISO-8859-1

Hi Yocto group. I am new to Yocto. I followed the starters guide and When
running bitbake I get some errors. first it complains that pseudo is not
available but required, and then it complains that bbpath is not set. What
is pseudo? I have sudo installed and setup to work for me, but I don't know
what pseudo is. Also, bitbake was not installed on my fresh install of
Fedora 15 so I installed it through the package manager. I guess that was
not included in the packages from the getting started guide. Where do I set
the bbpath? I followed the getting started guide and replaced the
appropriate commands with the ones from Davids blog post for the latest
release.

thnx

Brian
-- 
Duff

--0016367fb52d03248c04ac0dda7f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<font class=3D"Apple-style-span" color=3D"#222222" face=3D"arial, sans-seri=
f"><span class=3D"Apple-style-span" style=3D"color: rgb(0, 0, 0); font-fami=
ly: Consolas, &#39;Lucida Console&#39;, monospace, Verdana, sans-serif, &#3=
9;sans serif&#39;; font-size: 13px; background-color: rgb(240, 247, 255); "=
>Hi Yocto group. I am new to Yocto. I followed the starters guide and When =
running bitbake I get some errors. first it complains that pseudo is not av=
ailable but required, and then it complains that bbpath is not set. What is=
 pseudo? I have sudo installed and setup to work for me, but I don&#39;t kn=
ow what pseudo is. Also, bitbake was not installed on my fresh install of F=
edora 15 so I installed it through the package manager. I guess that was no=
t included in the packages from the getting started guide. Where do I set t=
he bbpath? I followed the getting started guide and replaced the appropriat=
e commands with the ones from Davids blog post for the latest release.</spa=
n><br clear=3D"all">
</font><div><div><font class=3D"Apple-style-span" face=3D"Consolas, &#39;Lu=
cida Console&#39;, monospace, Verdana, sans-serif, &#39;sans serif&#39;"><b=
r></font></div><div><font class=3D"Apple-style-span" face=3D"Consolas, &#39=
;Lucida Console&#39;, monospace, Verdana, sans-serif, &#39;sans serif&#39;"=
>thnx</font></div>
<div><font class=3D"Apple-style-span" face=3D"Consolas, &#39;Lucida Console=
&#39;, monospace, Verdana, sans-serif, &#39;sans serif&#39;"><br></font></d=
iv><div><font class=3D"Apple-style-span" face=3D"Consolas, &#39;Lucida Cons=
ole&#39;, monospace, Verdana, sans-serif, &#39;sans serif&#39;">Brian</font=
></div>
-- <br>Duff<br>
</div>

--0016367fb52d03248c04ac0dda7f--
