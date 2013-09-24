Return-Path: <pcjegan@gmail.com>
Received: from mail-vc0-f177.google.com (mail-vc0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0446AE01571
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2013 23:48:32 -0700 (PDT)
Received: by mail-vc0-f177.google.com with SMTP id hv10so2906893vcb.22
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2013 23:48:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-type; bh=KVP2lgbQHskag+nksxdSahaz1pr8WxAHGoju8FCu6Nc=;
	b=E+0/7tOO01rJ33/NQ82wjdxbmHhzBSTgxbLYhK9xCp08wPxPP7Eg+dHzhNGgx6hpAw
	md0Q41vC7y0X9WFDPpNWM2Xa1JvgwfIYN5YSvczNdWkWdC66qVk1ExrTJRWGGpFeBWHD
	TdioJTDoCutQFXoQJMCS4PHhEp/n1AvwescPm61rG5tTaq6mvUCNFO8Kt2RqwWqXQmWC
	/QDGvCtvsyPye471Gz5AaHYwgsQdUk0zt0UFSpOJQfFRjDc625+4SbsVTD3Z2Uwr9JVp
	UW9LJOdshnZlRQOzeCXn1mo9+uu1/FR3VN01iufim5E8y5BFiY26l7j9Fhb10VI33c7h
	A9hQ==
X-Received: by 10.52.117.20 with SMTP id ka20mr2482883vdb.48.1380005311131;
	Mon, 23 Sep 2013 23:48:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.169.146 with HTTP; Mon, 23 Sep 2013 23:48:11 -0700 (PDT)
In-Reply-To: <CABHD4K8=k1EJeeedZFzxqgHnhhTVgnSdXyTiivqKWsywZkxhxA@mail.gmail.com>
References: <CABHD4K8VcQHZSzO2Ch1mEeMNMzHXNTVw7DxqDYdO5VriOtxrWg@mail.gmail.com>
	<CANyK_8fqDiyBBn-fm=vEp3vxm05HaPTXrwp3-VsZVG7VEPm5MQ@mail.gmail.com>
	<CABHD4K-qjLsL9YDFe6Of2FX5V8Vzxg_5bnhzjvdReDy1-9o03A@mail.gmail.com>
	<CAAA4K6K1jGsq53gbDPpe+zhHkqU2BDn+RnVJJHG86G+pL5d00g@mail.gmail.com>
	<CABHD4K8=k1EJeeedZFzxqgHnhhTVgnSdXyTiivqKWsywZkxhxA@mail.gmail.com>
From: Jegan Chandru <pcjegan@gmail.com>
Date: Tue, 24 Sep 2013 12:18:11 +0530
Message-ID: <CAAA4K6KaJ2g3FL9NE9X9GRQOXjZsLkWLVuvf5uAY4RAB180W4Q@mail.gmail.com>
To: Amit Tomer <amittomer25@gmail.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to pack non striped valgrind image into squashfs image
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
X-List-Received-Date: Tue, 24 Sep 2013 06:48:33 -0000
Content-Type: multipart/alternative; boundary=bcaec547c83b5bb7eb04e71b8629

--bcaec547c83b5bb7eb04e71b8629
Content-Type: text/plain; charset=ISO-8859-1

OK.


On Tue, Sep 24, 2013 at 11:29 AM, Amit Tomer <amittomer25@gmail.com> wrote:

> Yes Jegan ,that's what we did yesterday and we have now non -striped .bins
> Thanks for your response
>
>
> On Tue, Sep 24, 2013 at 10:57 AM, Jegan Chandru <pcjegan@gmail.com> wrote:
>
>> Hi Amit,
>>
>> If you want the binaries not to be stripped, try
>> adding INHIBIT_PACKAGE_STRIP = "1" to valgrind recipe.
>> This will disable stripping the binaries as you have mentioned.
>>
>> Cheers,
>> JC
>>
>>
>> On Mon, Sep 23, 2013 at 7:03 PM, Amit Tomer <amittomer25@gmail.com>wrote:
>>
>>> Thanks Paul for your response.Below file is nmy valgrind recipe file
>>> which is from poky/meta/valgrind
>>>
>>> DESCRIPTION = "Valgrind memory debugger"
>>> HOMEPAGE = "http://valgrind.org/"
>>> BUGTRACKER = "http://valgrind.org/support/bug_reports.html"
>>> LICENSE = "GPLv2 & GPLv2+ & BSD"
>>> LIC_FILES_CHKSUM = "file://COPYING;md5=c46082167a314d785d012a244748d803 \
>>>
>>> file://include/pub_tool_basics.h;beginline=1;endline=29;md5=6b18ba0139d10678ce3a9969f68e4c6d
>>> \
>>>
>>> file://include/valgrind.h;beginline=1;endline=56;md5=b6bb5ab625a759823e17197ec3e2ee83
>>> \
>>>
>>> file://COPYING.DOCS;md5=8fdeb5abdb235a08e76835f8f3260215"
>>>
>>> X11DEPENDS = "virtual/libx11"
>>> DEPENDS = "${@base_contains('DISTRO_FEATURES', 'x11', '${X11DEPENDS}',
>>> '', d)}"
>>> PR = "r8"
>>>
>>> SRC_URI = "http://www.valgrind.org/downloads/valgrind-${PV}.tar.bz2 \
>>>            file://fix_issue_caused_by_ccache.patch \
>>>            file://fix_unsupporting_kernel_3.patch \
>>>            file://fixed-perl-path.patch \
>>>            file://Added-support-for-PPC-instructions-mfatbu-mfatbl.patch
>>> \
>>>            file://configure-with-newer-glibc.patch \
>>>            file://sepbuildfix.patch \
>>>           "
>>>
>>> SRC_URI[md5sum] = "288758010b271119a0ffc0183f1d6e38"
>>> SRC_URI[sha256sum] =
>>> "473be00576bed311a662b277a2bfbe97d9cca4058e68619a0e420c9fc19958db"
>>>
>>> COMPATIBLE_HOST = '(i.86|x86_64|powerpc|powerpc64).*-linux'
>>> COMPATIBLE_HOST_armv7a = 'arm.*-linux'
>>>
>>> inherit autotools
>>>
>>> EXTRA_OECONF = "--enable-tls --without-mpicc"
>>> EXTRA_OECONF_armv7a = "--enable-tls -host=armv7-none-linux-gnueabi
>>> --without-mpicc"
>>> EXTRA_OEMAKE = "-w"
>>> PARALLEL_MAKE = ""
>>>
>>> do_install_append () {
>>>     install -m 644 ${B}/default.supp ${D}/${libdir}/valgrind/
>>> }
>>>
>>> FILES_${PN}-dbg += "${libdir}/${PN}/*/.debug/*"
>>> RRECOMMENDS_${PN}_powerpc += "${TCLIBC}-dbg"
>>> RRECOMMENDS_${PN}_powerpc64 += "${TCLIBC}-dbg"
>>> RRECOMMENDS_${PN}_armv7a += "${TCLIBC}-dbg"
>>>
>>>
>>> Now this file will compile valgrind binary and install it
>>> /usr/lib/valgrind for my package
>>>
>>> Now when I go
>>> to  /tmp/work/${workdir}/image-zzz_ii-debug/1.0-r0/rootfs/usr/lib/valgrind
>>>
>>> I can see the vgpreload_memcheck-arm-linux.so is stripped which should
>>> be non stripped for our valgrind to work well
>>>
>>> file vgpreload_memcheck-arm-linux.so
>>> vgpreload_memcheck-arm-linux.so: ELF 32-bit LSB shared object, ARM,
>>> version 1 (SYSV), stripped
>>>
>>>
>>> Now how our valgrind recipe stripping these images since I am new to
>>> yocto finding it difficult to solve it.
>>>
>>
>>>
>>>
>>> On Mon, Sep 23, 2013 at 6:32 PM, Paul Barker <paul@paulbarker.me.uk>wrote:
>>>
>>>> On 23 September 2013 11:00, Amit Tomer <amittomer25@gmail.com> wrote:
>>>> > I am new to OpenEmbedded and facing an issue where our valgrind is not
>>>> > working,
>>>> > Valgrind bin comes as non striped image after compilation but while
>>>> packing
>>>> > it to squashfs image ,it become striped one and fails to run on
>>>> target.
>>>> >
>>>> > So how do we pack it as non striped one ??
>>>> >
>>>>
>>>> It's likely in <packagename>-dbg (so probably valgrind-dbg). Try
>>>> adding that to your IMAGE_INSTALL variable.
>>>>
>>>> --
>>>> Paul Barker
>>>>
>>>> Email: paul@paulbarker.me.uk
>>>> http://www.paulbarker.me.uk
>>>>
>>>
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>
>


-- 
JCP

--bcaec547c83b5bb7eb04e71b8629
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">OK.=A0<div class=3D"gmail_extra"><br><br><div class=3D"gma=
il_quote">On Tue, Sep 24, 2013 at 11:29 AM, Amit Tomer <span dir=3D"ltr">&l=
t;<a href=3D"mailto:amittomer25@gmail.com" target=3D"_blank">amittomer25@gm=
ail.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Yes Jegan ,that&#39;s what =
we did yesterday and we have now non -striped .bins<div>Thanks for your res=
ponse</div>

</div><div class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_extra"><b=
r><br><div class=3D"gmail_quote">On Tue, Sep 24, 2013 at 10:57 AM, Jegan Ch=
andru <span dir=3D"ltr">&lt;<a href=3D"mailto:pcjegan@gmail.com" target=3D"=
_blank">pcjegan@gmail.com</a>&gt;</span> wrote:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi Amit,<div><br></div><div=
><div>If you want the binaries not to be stripped, try adding=A0INHIBIT_PAC=
KAGE_STRIP =3D &quot;1&quot; to valgrind recipe.</div>


<div>This will disable stripping the binaries as you have mentioned.</div>

<div><br></div><div>Cheers,</div><div>JC</div><div class=3D"gmail_extra"><b=
r><br><div class=3D"gmail_quote"><div><div>On Mon, Sep 23, 2013 at 7:03 PM,=
 Amit Tomer <span dir=3D"ltr">&lt;<a href=3D"mailto:amittomer25@gmail.com" =
target=3D"_blank">amittomer25@gmail.com</a>&gt;</span> wrote:<br>




<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div dir=3D"ltr">Thanks Paul for your response.Below file =
is nmy valgrind recipe file which is from poky/meta/valgrind<div>




<br></div><div><div>DESCRIPTION =3D &quot;Valgrind memory debugger&quot;</d=
iv><div>HOMEPAGE =3D &quot;<a href=3D"http://valgrind.org/" target=3D"_blan=
k">http://valgrind.org/</a>&quot;</div>
<div>BUGTRACKER =3D &quot;<a href=3D"http://valgrind.org/support/bug_report=
s.html" target=3D"_blank">http://valgrind.org/support/bug_reports.html</a>&=
quot;</div><div>LICENSE =3D &quot;GPLv2 &amp; GPLv2+ &amp; BSD&quot;</div><=
div>




LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3Dc46082167a314d785d012a24474=
8d803 \</div>
<div>=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 file://include/pub_tool_basics=
.h;beginline=3D1;endline=3D29;md5=3D6b18ba0139d10678ce3a9969f68e4c6d \</div=
><div>=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 file://include/valgrind.h;beg=
inline=3D1;endline=3D56;md5=3Db6bb5ab625a759823e17197ec3e2ee83 \</div>





<div>=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 file://COPYING.DOCS;md5=3D8fde=
b5abdb235a08e76835f8f3260215&quot;</div><div><br></div><div>X11DEPENDS =3D =
&quot;virtual/libx11&quot;</div><div>DEPENDS =3D &quot;${@base_contains(&#3=
9;DISTRO_FEATURES&#39;, &#39;x11&#39;, &#39;${X11DEPENDS}&#39;, &#39;&#39;,=
 d)}&quot;</div>





<div>PR =3D &quot;r8&quot;</div><div><br></div><div>SRC_URI =3D &quot;<a hr=
ef=3D"http://www.valgrind.org/downloads/valgrind-$%7BPV%7D.tar.bz2" target=
=3D"_blank">http://www.valgrind.org/downloads/valgrind-${PV}.tar.bz2</a> \<=
/div>




<div>=A0 =A0 =A0 =A0 =A0 =A0file://fix_issue_caused_by_ccache.patch \</div>
<div>=A0 =A0 =A0 =A0 =A0 =A0file://fix_unsupporting_kernel_3.patch \</div><=
div>=A0 =A0 =A0 =A0 =A0 =A0file://fixed-perl-path.patch \</div><div>=A0 =A0=
 =A0 =A0 =A0 =A0file://Added-support-for-PPC-instructions-mfatbu-mfatbl.pat=
ch \</div><div>=A0 =A0 =A0 =A0 =A0 =A0file://configure-with-newer-glibc.pat=
ch \</div>





<div>=A0 =A0 =A0 =A0 =A0 =A0file://sepbuildfix.patch \</div><div>=A0 =A0 =
=A0 =A0 =A0 &quot;</div><div><br></div><div>SRC_URI[md5sum] =3D &quot;28875=
8010b271119a0ffc0183f1d6e38&quot;</div><div>SRC_URI[sha256sum] =3D &quot;47=
3be00576bed311a662b277a2bfbe97d9cca4058e68619a0e420c9fc19958db&quot;</div>





<div><br></div><div>COMPATIBLE_HOST =3D &#39;(i.86|x86_64|powerpc|powerpc64=
).*-linux&#39;</div><div>COMPATIBLE_HOST_armv7a =3D &#39;arm.*-linux&#39;</=
div><div><br></div><div>inherit autotools</div><div><br></div><div>EXTRA_OE=
CONF =3D &quot;--enable-tls --without-mpicc&quot;</div>





<div>EXTRA_OECONF_armv7a =3D &quot;--enable-tls -host=3Darmv7-none-linux-gn=
ueabi --without-mpicc&quot;</div><div>EXTRA_OEMAKE =3D &quot;-w&quot;</div>=
<div>PARALLEL_MAKE =3D &quot;&quot;</div><div><br></div><div>do_install_app=
end () {</div>





<div>=A0 =A0 install -m 644 ${B}/default.supp ${D}/${libdir}/valgrind/</div=
><div>}</div><div><br></div><div>FILES_${PN}-dbg +=3D &quot;${libdir}/${PN}=
/*/.debug/*&quot;</div><div>RRECOMMENDS_${PN}_powerpc +=3D &quot;${TCLIBC}-=
dbg&quot;</div>





<div>RRECOMMENDS_${PN}_powerpc64 +=3D &quot;${TCLIBC}-dbg&quot;</div><div>R=
RECOMMENDS_${PN}_armv7a +=3D &quot;${TCLIBC}-dbg&quot;</div><div><br></div>=
<div><br><div>Now this file will compile valgrind binary and install it /us=
r/lib/valgrind for my package</div>





<div><br></div><div>Now when I go to=A0=A0/tmp/work/${workdir}/image-zzz_ii=
-debug/1.0-r0/rootfs/usr/lib/valgrind=A0</div><div><br></div><div>I can see=
 the=A0vgpreload_memcheck-arm-linux.so is stripped which should be non stri=
pped for our valgrind to work well</div>





<div><br></div><div><div>file vgpreload_memcheck-arm-linux.so</div><div>vgp=
reload_memcheck-arm-linux.so: ELF 32-bit LSB shared object, ARM, version 1 =
(SYSV), stripped</div><div><br></div><div><br></div><div>
Now how our valgrind recipe stripping these images since I am new to yocto =
finding it difficult to solve it.</div></div></div></div></div></blockquote=
></div></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-=
style:solid;padding-left:1ex">


<div><div>

<div dir=3D"ltr"><div><div><div><br></div></div></div></div><div><div><div =
class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Mon, Sep 23, 20=
13 at 6:32 PM, Paul Barker <span dir=3D"ltr">&lt;<a href=3D"mailto:paul@pau=
lbarker.me.uk" target=3D"_blank">paul@paulbarker.me.uk</a>&gt;</span> wrote=
:<br>





<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div>On 23 September 2013 11:00, Amit Tomer &lt;<a href=3D=
"mailto:amittomer25@gmail.com" target=3D"_blank">amittomer25@gmail.com</a>&=
gt; wrote:<br>






&gt; I am new to OpenEmbedded and facing an issue where our valgrind is not=
<br>
&gt; working,<br>
&gt; Valgrind bin comes as non striped image after compilation but while pa=
cking<br>
&gt; it to squashfs image ,it become striped one and fails to run on target=
.<br>
&gt;<br>
&gt; So how do we pack it as non striped one ??<br>
&gt;<br>
<br>
</div>It&#39;s likely in &lt;packagename&gt;-dbg (so probably valgrind-dbg)=
. Try<br>
adding that to your IMAGE_INSTALL variable.<br>
<span><font color=3D"#888888"><br>
--<br>
Paul Barker<br>
<br>
Email: <a href=3D"mailto:paul@paulbarker.me.uk" target=3D"_blank">paul@paul=
barker.me.uk</a><br>
<a href=3D"http://www.paulbarker.me.uk" target=3D"_blank">http://www.paulba=
rker.me.uk</a><br>
</font></span></blockquote></div><br></div>
</div></div><br></div></div>_______________________________________________=
<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div></div></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
JCP
</div></div>

--bcaec547c83b5bb7eb04e71b8629--
