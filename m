Return-Path: <sravansid@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 968E3E009D7; Thu,  9 Jul 2015 07:47:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sravansid[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f182.google.com (mail-ie0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42C6CE009A7
	for <yocto@yoctoproject.org>; Thu,  9 Jul 2015 07:47:17 -0700 (PDT)
Received: by iebmu5 with SMTP id mu5so177587863ieb.1
	for <yocto@yoctoproject.org>; Thu, 09 Jul 2015 07:47:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=+kr+yavTUgWSrVzRg0zwjECj9pMB0m0EJqMzV9GAPsw=;
	b=PUqnnunQjCG3MbRvP1xJGYRoiPIueVvY7aP1dBRlTO3VxzPhzM3XD28OS7Jw3t1Cus
	KunfOxS8biHt1qYlXdYsjgLtvaSaypAZ3p6BmlNsx+EdIkpoq1vE1Ir6q9ekv3qCOSRd
	+lZMBrNx2sHGPGUVL+kA7N6jWphc26H26qgtO7L8clK9vMSKsX3JSy3Oe0epVcKnMsST
	VgWyKDQjN9Vydjymzjh06PuUTrSH8t8X3+ZgcuQW1Tu9LukomigA95zD4zFQw43oZd8p
	uzWQJTD5RcI2BhBlkfsa1RyGbPIOSljqnEW4oZrwp75ijwXQKi0DvbjlnxbXnx5KW1BN
	8DuA==
X-Received: by 10.50.79.129 with SMTP id j1mr69949003igx.32.1436453236965;
	Thu, 09 Jul 2015 07:47:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.85.35 with HTTP; Thu, 9 Jul 2015 07:46:57 -0700 (PDT)
From: Sravan K <sravansid@gmail.com>
Date: Thu, 9 Jul 2015 20:16:57 +0530
Message-ID: <CAGF7Eh1mk6kdBsjCoSXmV5sPw+e_ki_4om1222fBfeey+ybfrA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: libtool issue
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
X-List-Received-Date: Thu, 09 Jul 2015 14:47:21 -0000
Content-Type: multipart/alternative; boundary=089e011609fced0b61051a72544f

--089e011609fced0b61051a72544f
Content-Type: text/plain; charset=UTF-8

Hi All,

I am trying to cross compile libsoup and few other opensource libraries for
arm on  my ubuntu.

I facing an issue while build libsoup.

Error:
--------------------------------------------------------------------------------

| /bin/grep: /usr/lib/libgobject-2.0.la: No such file or directory
| sed: can't read /usr/lib/libgobject-2.0.la: No such file or directory
| libtool: link: `/usr/lib/libgobject-2.0.la' is not a valid libtool archive
| make[3]: *** [libsoup-2.4.la] Error 1
--------------------------------------------------------------------------------


Versions:
--------------------------------------------------------------------------------
libsoup 2.35.90
libsoup libtool (GNU libtool) 2.4

glib 2.29.18
glib libtool (GNU libtool) 2.4.2
--------------------------------------------------------------------------------

The path is specified as "/usr/lib/libgobject-2.0.la" instead of
"{sysroot}/usr/lib/libgobject-2.0.la" in libgio-2.0.la

./tmp/sysroots/xxx/usr/lib/libgio-2.0.la:dependency_libs=' /usr/lib/
libgobject-2.0.la /usr/lib/libgthread-2.0.la -lpthread /usr/lib/libffi.la
/usr/lib/libgmodule-2.0.la -ldl /usr/lib/libglib-2.0.la -lresolv
-L/home/local/......./build/tmp/sysroots/xxx/usr/lib -lz'


After some investigation found that Libsoup' libtool is unable to translate
the path to sysroot.
Found that the patch
http://git.yoctoproject.org/cgit.cgi/poky/plain/meta/recipes-devtools/libtool/libtool/resolve-sysroot.patch?h=bernard
could help......but  this patch only translated "=*" to "{sysroot/*}"

So modified this path slightly to translate "/usr/lib/" and "/lib" to
"{sysroot/usr/lib}" and "${sysroot}/lib" respectively.


Though this worked for me for now, I am interested in know if there is
existing patch which can do this.


Thanks in advance
-Sravan

--089e011609fced0b61051a72544f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All,<div><br><div>I am trying to cross compile libsoup =
and few other opensource libraries for arm on =C2=A0my ubuntu.</div><div><b=
r></div><div>I facing an issue while build libsoup.</div><div><br></div><di=
v>Error:</div><div>--------------------------------------------------------=
------------------------</div><div><br></div><div><div>| /bin/grep: /usr/li=
b/<a href=3D"http://libgobject-2.0.la">libgobject-2.0.la</a>: No such file =
or directory</div><div>| sed: can&#39;t read /usr/lib/<a href=3D"http://lib=
gobject-2.0.la">libgobject-2.0.la</a>: No such file or directory</div><div>=
| libtool: link: `/usr/lib/<a href=3D"http://libgobject-2.0.la">libgobject-=
2.0.la</a>&#39; is not a valid libtool archive</div><div>| make[3]: *** [<a=
 href=3D"http://libsoup-2.4.la">libsoup-2.4.la</a>] Error 1</div></div><div=
>--------------------------------------------------------------------------=
------<br></div><div><br></div><div><br></div><div>Versions:</div><div>----=
---------------------------------------------------------------------------=
-<br></div><div>libsoup 2.35.90<br></div><div>libsoup libtool (GNU libtool)=
 2.4</div><div><br></div><div>glib 2.29.18<br></div><div><div>glib libtool =
(GNU libtool) 2.4.2</div></div><div>---------------------------------------=
-----------------------------------------<br></div><div><br></div><div>The =
path is specified as &quot;/usr/lib/<a href=3D"http://libgobject-2.0.la">li=
bgobject-2.0.la</a>&quot; instead of &quot;{sysroot}/usr/lib/<a href=3D"htt=
p://libgobject-2.0.la">libgobject-2.0.la</a>&quot; in <a href=3D"http://lib=
gio-2.0.la">libgio-2.0.la</a></div><div><br></div><div><div>./tmp/sysroots/=
xxx/usr/lib/libgio-2.0.la:dependency_libs=3D&#39; /usr/lib/<a href=3D"http:=
//libgobject-2.0.la">libgobject-2.0.la</a> /usr/lib/<a href=3D"http://libgt=
hread-2.0.la">libgthread-2.0.la</a> -lpthread /usr/lib/<a href=3D"http://li=
bffi.la">libffi.la</a> /usr/lib/<a href=3D"http://libgmodule-2.0.la">libgmo=
dule-2.0.la</a> -ldl /usr/lib/<a href=3D"http://libglib-2.0.la">libglib-2.0=
.la</a> -lresolv -L/home/local/......./build/tmp/sysroots/xxx/usr/lib -lz&#=
39;</div></div><div><br></div><div><br></div><div>After some investigation =
found that Libsoup&#39; libtool is unable to translate the path to sysroot.=
</div><div>Found that the patch <a href=3D"http://git.yoctoproject.org/cgit=
.cgi/poky/plain/meta/recipes-devtools/libtool/libtool/resolve-sysroot.patch=
?h=3Dbernard">http://git.yoctoproject.org/cgit.cgi/poky/plain/meta/recipes-=
devtools/libtool/libtool/resolve-sysroot.patch?h=3Dbernard</a> could help..=
....but =C2=A0this patch only translated &quot;=3D*&quot; to &quot;{sysroot=
/*}&quot;</div><div><br></div><div>So modified this path slightly to transl=
ate &quot;/usr/lib/&quot; and &quot;/lib&quot; to &quot;{sysroot/usr/lib}&q=
uot; and &quot;${sysroot}/lib&quot; respectively.</div><div><br></div><div>=
<br></div><div>Though this worked for me for now, I am interested in know i=
f there is existing patch which can do this.=C2=A0</div><div><br></div><div=
><br></div><div>Thanks in advance</div><div>-Sravan</div></div></div>

--089e011609fced0b61051a72544f--
