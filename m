Return-Path: <vidal.develone@gmail.com>
Received: from mail-ea0-f171.google.com (mail-ea0-f171.google.com
	[209.85.215.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69FCAE01409
	for <yocto@yoctoproject.org>; Mon,  3 Jun 2013 13:33:39 -0700 (PDT)
Received: by mail-ea0-f171.google.com with SMTP id m14so1271179eaj.16
	for <yocto@yoctoproject.org>; Mon, 03 Jun 2013 13:33:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type;
	bh=NYeTwCiRhUqEwD0ifmwR4AXggwXPAxjgTzskZ0EHhHM=;
	b=oUpAfQohUY0zvlNp37784xeemfAh79BOQHp9JxKL4hFqGGLJzuSUD7mkcd00yg7DN9
	1IXRLMvvY48pSdfIgxEzyXf/HXpdCBdBYEBzW2aHRIjTPDXfW/cyxZWSd7RtwKVvPVGk
	YXvRVXK3FbvQ82BiIGOBFq0h3M7G5BbYNm1oqWIuqsyy3ZvAdM+15Sj6rv0XDIZzzlIG
	1VUVKOz9AW8xzDrTrE5gkXn3lsLquxKDuLuT7VT/5ODl9rSrj+XtbxfF/AY2a0mh0a3G
	AmnaNiiY3/6JHD4WM3WItYFGpAqh9M6jiMTdAuxpVWHjrKRXX+nlPcVSg0oXEBimkKLk
	3mnQ==
MIME-Version: 1.0
X-Received: by 10.14.10.9 with SMTP id 9mr24363050eeu.75.1370291618214; Mon,
	03 Jun 2013 13:33:38 -0700 (PDT)
Received: by 10.223.165.200 with HTTP; Mon, 3 Jun 2013 13:33:38 -0700 (PDT)
Date: Mon, 3 Jun 2013 14:33:38 -0600
Message-ID: <CANwz6nxO25BCt2B-H8T9_SO5F3DqfE1w2QDSoXPVnP-qxq994Q@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Cc: dtran11@gmail.com
Subject: gcc enable-languages
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
X-List-Received-Date: Mon, 03 Jun 2013 20:33:39 -0000
Content-Type: multipart/alternative; boundary=001a11c29ec024988504de45e101

--001a11c29ec024988504de45e101
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

*Dat Tran* dtran11 at
gmail.com<yocto%40yoctoproject.org?Subject=3DRe%3A%20%5Byocto%5D%20gcc%20en=
able-languages&In-Reply-To=3D%3Cloom.20130603T205457-413%40post.gmane.org%3=
E>wrote

>* Hello,*>* I want to add support for FORTRAN in my image.*>* On target gc=
c -v shows --enable-languages=3Dc,c++*>* This needs to --enable-languages=
=3Dc,c++,fortran.based on my host system.*>* How does the variable FORTRAN =
in */home/vidal/POKY/build032813_panda/poky/meta/recipes-devtools/gcc/gcc-
configure-common.inc get set?  Can this be done in the local.conf file?
>* *>* Does the FORTRAN ?=3D ",f77" this need to be FORTRAN ?=3D ",fortran"=
 since we *are building gcc4.7?
>* Any and all help will be appreciated.*>* Thanks*
Hi Edward,

I am having the same problem as you. Did you solve this issue. I am looking
for gfortran recipe but I don't see it.

thanks

They had recommended adding libgfortran to
poky/meta/recipes-devtools/gcc/gcc-configure-runtime.inc
RUNTIMETARGET =3D "libssp libstdc++-v3 libgomp".  This did not work either,
If you find a solution I would be interested in getting the fix.
Thanks

--001a11c29ec024988504de45e101
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><b>Dat Tran</b>=20
    <a href=3D"mailto:yocto%40yoctoproject.org?Subject=3DRe%3A%20%5Byocto%5=
D%20gcc%20enable-languages&amp;In-Reply-To=3D%3Cloom.20130603T205457-413%40=
post.gmane.org%3E" title=3D"[yocto] gcc enable-languages">dtran11 at gmail.=
com</a> wrote <br>
<pre>&gt;<i> Hello,
</i>&gt;<i> I want to add support for FORTRAN in my image.
</i>&gt;<i> On target gcc -v shows --enable-languages=3Dc,c++
</i>&gt;<i> This needs to --enable-languages=3Dc,c++,fortran.based on my ho=
st system.
</i>&gt;<i> How does the variable FORTRAN in=20
</i>/home/vidal/POKY/build032813_panda/poky/meta/recipes-devtools/gcc/gcc-
configure-common.inc get set?=A0 Can this be done in the local.conf file?
&gt;<i>=20
</i>&gt;<i> Does the FORTRAN ?=3D &quot;,f77&quot; this need to be FORTRAN =
?=3D &quot;,fortran&quot; since we=20
</i>are building gcc4.7?
&gt;<i> Any and all help will be appreciated.
</i>&gt;<i> Thanks
</i>
Hi Edward,=20

I am having the same problem as you. Did you solve this issue. I am looking=
=20
for gfortran recipe but I don&#39;t see it.

thanks
</pre>They had recommended adding libgfortran to poky/meta/recipes-devtools=
/gcc/gcc-configure-runtime.inc<br>RUNTIMETARGET =3D &quot;libssp libstdc++-=
v3 libgomp&quot;.=A0 This did not work either,<br></div>If you find a solut=
ion I would be interested in getting the fix.<br>
</div>Thanks<br><br></div>

--001a11c29ec024988504de45e101--
