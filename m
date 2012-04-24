Return-Path: <446257357@qq.com>
Received: from smtpbg56.qq.com (smtpbg56.qq.com [64.71.138.45])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 6B911E013E5
	for <yocto@yoctoproject.org>; Tue, 24 Apr 2012 03:13:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s0907;
	t=1335262394; bh=DM0DWXpHOwVIh9QmQ9ItPRhcMIaUd6qnMQMs5cPqpGU=;
	h=X-QQ-mid:Received:X-QQ-SSF:Message-ID:Date:From:User-Agent:
	MIME-Version:To:Subject:Content-Type;
	b=WzI52yv4I0uu91OmP2XLKc+/zEdc+oUvIZ/xmM3Zf7EFmNoIUQPSitESRxLGup6y9
	ueQ6B1+nHw3Dxo0WoBoSLvHD/eQJQ+Gp+o1rkfnb/ZSqS3VHX5JrGuhEYV9plDy
X-QQ-mid: esmtp1t1335262390t917t19940
Received: from [10.99.161.248] (unknown [202.120.116.110])
	by esmtp4.qq.com (ESMTP) with SMTP id 0
	for <yocto@yoctoproject.org>; Tue, 24 Apr 2012 18:13:10 +0800 (CST)
X-QQ-SSF: 00000000000000F0FNF00F000000000
Message-ID: <4F967CB6.6020301@qq.com>
Date: Tue, 24 Apr 2012 18:13:10 +0800
From: =?UTF-8?B?IuayiOWNjuaYjkBxcSI=?= <446257357@qq.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Tue, 24 Apr 2012 07:19:37 -0700
Subject: to build the opencv lib
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
X-List-Received-Date: Tue, 24 Apr 2012 10:13:17 -0000
Content-Type: multipart/alternative;
	boundary="------------090706060907040001050103"

--------------090706060907040001050103
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,
    I want to build the opencv lib into yocto,but I have no idea to do 
it. I have copyed a opencv_1.0.0.bb file
into my layer,and after I do :bitbake opencv.,it comes the error:Nothing 
PROVIDES 'swig'(but ....)....
The recipe is the following,

|DESCRIPTION=  "Opencv : The Open Computer Vision Library"
HOMEPAGE=  "http://sourceforge.net/projects/opencvlibrary"
SECTION=  "libs"
PRIORITY=  "optional"
LICENSE=  "GPLv2"

PR=  "r3"

DEPENDS=  "libtool swig swig-native python jpeg zlib libpng tiff glib-2.0"
#RDEPENDS_${PN} =  "python jpeg zlib libpng tiff glib-2.0"

SRC_URI=  "${SOURCEFORGE_MIRROR}/opencvlibrary/opencv-${PV}.tar.gz \
           file://debian/010_enable_static.diff \
           file://debian/010_ffmpeg_linking.diff \
           file://debian/010_fix_optimisations.diff \
           file://debian/010_m4_syntax.diff \
           file://debian/010_makefile_syntax.diff \
           file://debian/010_python_cspec.diff \
           file://debian/020_python_linking.diff \
           file://debian/030_install_hook.diff \
           file://debian/050_rebootstrap.diff \
           file://debian/100_amd64.diff \
           file://debian/100_static_inline.diff \
           file://debian/100_ffmpeg_updates.diff \
           file://debian/110_dc1394.diff \
           file://debian/120_header_warnings.diff \
           file://debian/200_documentation.diff \
           file://debian/200_examples_makefile.diff \
           file://debian/210_openmp_compilation.diff \
           file://debian/300_fix_segfault_in_window_gtk.diff \
"

inherit distutils-base autotools pkgconfig

EXTRA_OECONF=  "--disable-debug  --without-gtk --without-python --disable-apps az_python_cspec=${STAGING_INCDIR}/${PYTHON_DIR}"

export BUILD_SYS
export HOST_SYS

do_configure() {
	gnu-configize
	cp ${STAGING_DATADIR}/libtool/config.{sub,guess}  autotools
	oe_runconf
}

PACKAGES+=  "python-opencv"

python populate_packages_prepend() {
	cv_libdir=  bb.data.expand('${libdir}',  d)
	cv_libdir_dbg=  bb.data.expand('${libdir}/.debug',  d)
	do_split_packages(d,  cv_libdir,  '^lib(.*)\.so$',  'lib%s-dev',  'OpenCV%s development package',  extra_depends='${PN}-dev',  allow_links=True)
	do_split_packages(d,  cv_libdir,  '^lib(.*)\.la$',  'lib%s-dev',  'OpenCV%s development package',  extra_depends='${PN}-dev')
	do_split_packages(d,  cv_libdir,  '^lib(.*)\.a$',  'lib%s-dev',  'OpenCV%s development package',  extra_depends='${PN}-dev')
	do_split_packages(d,  cv_libdir,  '^lib(.*)\.so\.*',  'lib%s',  'OpenCV%s library',  extra_depends='',  allow_links=True)
}

FILES_${PN}-doc+=  "${datadir}/opencv/"
FILES_${PN} =  "${bindir}"
FILES_${PN}-dbg+=  "${libdir}/.debug"
FILES_${PN}-dev=  "${includedir} ${libdir}/pkgconfig"

DESCRIPTION_python-opencv=  "Python bindings to opencv"
FILES_python-opencv=  "${PYTHON_SITEPACKAGES_DIR}/*"
RDEPENDS_python-opencv=  "python-core"

SRC_URI[md5sum] =  "146a05005f2d2c16c4ee10ebd7f1dd58"
SRC_URI[sha256sum] =  "3a6ee888e4dd4ab7f2bc80d046688c099c6a95d1267af554b7c8f1543b66f21e"



Thanks~
|




--------------090706060907040001050103
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Hi,<br>
       I want to build the opencv lib into yocto,but I have no idea to
    do it. I have copyed a opencv_1.0.0.bb file<br>
    into my layer,and after I do :bitbake opencv.,it comes the
    error:Nothing PROVIDES 'swig'(but ....)....<br>
    The recipe is the following,<br>
    <pre><code>DESCRIPTION <span class="hl sym">=</span> <span class="hl str">"Opencv : The Open Computer Vision Library"</span>
HOMEPAGE <span class="hl sym">=</span> <span class="hl str"><a class="moz-txt-link-rfc2396E" href="http://sourceforge.net/projects/opencvlibrary">"http://sourceforge.net/projects/opencvlibrary"</a></span>
SECTION <span class="hl sym">=</span> <span class="hl str">"libs"</span>
PRIORITY <span class="hl sym">=</span> <span class="hl str">"optional"</span>
LICENSE <span class="hl sym">=</span> <span class="hl str">"GPLv2"</span>

PR <span class="hl sym">=</span> <span class="hl str">"r3"</span>

DEPENDS <span class="hl sym">=</span> <span class="hl str">"libtool swig swig-native python jpeg zlib libpng tiff glib-2.0"</span>
#RDEPENDS_$<span class="hl sym">{</span>PN<span class="hl sym">} =</span> <span class="hl str">"python jpeg zlib libpng tiff glib-2.0"</span>

SRC_URI <span class="hl sym">=</span> <span class="hl str">"${SOURCEFORGE_MIRROR}/opencvlibrary/opencv-${PV}.tar.gz \</span>
<span class="hl str">          <a class="moz-txt-link-freetext" href="file://debian/010_enable_static.diff">file://debian/010_enable_static.diff</a> \</span>
<span class="hl str">          <a class="moz-txt-link-freetext" href="file://debian/010_ffmpeg_linking.diff">file://debian/010_ffmpeg_linking.diff</a> \</span>
<span class="hl str">          <a class="moz-txt-link-freetext" href="file://debian/010_fix_optimisations.diff">file://debian/010_fix_optimisations.diff</a> \</span>
<span class="hl str">          <a class="moz-txt-link-freetext" href="file://debian/010_m4_syntax.diff">file://debian/010_m4_syntax.diff</a> \</span>
<span class="hl str">          <a class="moz-txt-link-freetext" href="file://debian/010_makefile_syntax.diff">file://debian/010_makefile_syntax.diff</a> \</span>
<span class="hl str">          <a class="moz-txt-link-freetext" href="file://debian/010_python_cspec.diff">file://debian/010_python_cspec.diff</a> \</span>
<span class="hl str">          <a class="moz-txt-link-freetext" href="file://debian/020_python_linking.diff">file://debian/020_python_linking.diff</a> \</span>
<span class="hl str">          <a class="moz-txt-link-freetext" href="file://debian/030_install_hook.diff">file://debian/030_install_hook.diff</a> \</span>
<span class="hl str">          <a class="moz-txt-link-freetext" href="file://debian/050_rebootstrap.diff">file://debian/050_rebootstrap.diff</a> \</span>
<span class="hl str">          <a class="moz-txt-link-freetext" href="file://debian/100_amd64.diff">file://debian/100_amd64.diff</a> \</span>
<span class="hl str">          <a class="moz-txt-link-freetext" href="file://debian/100_static_inline.diff">file://debian/100_static_inline.diff</a> \</span>
<span class="hl str">          <a class="moz-txt-link-freetext" href="file://debian/100_ffmpeg_updates.diff">file://debian/100_ffmpeg_updates.diff</a> \</span>
<span class="hl str">          <a class="moz-txt-link-freetext" href="file://debian/110_dc1394.diff">file://debian/110_dc1394.diff</a> \</span>
<span class="hl str">          <a class="moz-txt-link-freetext" href="file://debian/120_header_warnings.diff">file://debian/120_header_warnings.diff</a> \</span>
<span class="hl str">          <a class="moz-txt-link-freetext" href="file://debian/200_documentation.diff">file://debian/200_documentation.diff</a> \</span>
<span class="hl str">          <a class="moz-txt-link-freetext" href="file://debian/200_examples_makefile.diff">file://debian/200_examples_makefile.diff</a> \</span>
<span class="hl str">          <a class="moz-txt-link-freetext" href="file://debian/210_openmp_compilation.diff">file://debian/210_openmp_compilation.diff</a> \</span>
<span class="hl str">          <a class="moz-txt-link-freetext" href="file://debian/300_fix_segfault_in_window_gtk.diff">file://debian/300_fix_segfault_in_window_gtk.diff</a> \</span>
<span class="hl str">"</span>

inherit distutils<span class="hl sym">-</span>base autotools pkgconfig

EXTRA_OECONF <span class="hl sym">=</span> <span class="hl str">"--disable-debug  --without-gtk --without-python --disable-apps az_python_cspec=${STAGING_INCDIR}/${PYTHON_DIR}"</span>

export BUILD_SYS
export HOST_SYS

do_configure<span class="hl sym">() {</span>
	gnu<span class="hl sym">-</span>configize
	cp $<span class="hl sym">{</span>STAGING_DATADIR<span class="hl sym">}/</span>libtool<span class="hl sym">/</span>config.<span class="hl sym">{</span>sub<span class="hl sym">,</span>guess<span class="hl sym">}</span> autotools
	oe_runconf
<span class="hl sym">}</span>

PACKAGES <span class="hl sym">+=</span> <span class="hl str">"python-opencv"</span>

python populate_packages_prepend <span class="hl sym">() {</span>
	cv_libdir <span class="hl sym">=</span> bb.<span class="hl kwa">data</span>.expand<span class="hl sym">(</span>'$<span class="hl sym">{</span>libdir<span class="hl sym">}</span>'<span class="hl sym">,</span> d<span class="hl sym">)</span>
	cv_libdir_dbg <span class="hl sym">=</span> bb.<span class="hl kwa">data</span>.expand<span class="hl sym">(</span>'$<span class="hl sym">{</span>libdir<span class="hl sym">}/</span>.debug'<span class="hl sym">,</span> d<span class="hl sym">)</span>
	do_split_packages<span class="hl sym">(</span>d<span class="hl sym">,</span> cv_libdir<span class="hl sym">,</span> '^lib<span class="hl sym">(</span>.<span class="hl sym">*)</span>\.so$'<span class="hl sym">,</span> 'lib<span class="hl sym">%</span>s<span class="hl sym">-</span>dev'<span class="hl sym">,</span> 'OpenCV <span class="hl sym">%</span>s development package'<span class="hl sym">,</span> extra_depends<span class="hl sym">=</span>'$<span class="hl sym">{</span>PN<span class="hl sym">}-</span>dev'<span class="hl sym">,</span> allow_links<span class="hl sym">=</span><span class="hl kwa">True</span><span class="hl sym">)</span>
	do_split_packages<span class="hl sym">(</span>d<span class="hl sym">,</span> cv_libdir<span class="hl sym">,</span> '^lib<span class="hl sym">(</span>.<span class="hl sym">*)</span>\.la$'<span class="hl sym">,</span> 'lib<span class="hl sym">%</span>s<span class="hl sym">-</span>dev'<span class="hl sym">,</span> 'OpenCV <span class="hl sym">%</span>s development package'<span class="hl sym">,</span> extra_depends<span class="hl sym">=</span>'$<span class="hl sym">{</span>PN<span class="hl sym">}-</span>dev'<span class="hl sym">)</span>
	do_split_packages<span class="hl sym">(</span>d<span class="hl sym">,</span> cv_libdir<span class="hl sym">,</span> '^lib<span class="hl sym">(</span>.<span class="hl sym">*)</span>\.a$'<span class="hl sym">,</span> 'lib<span class="hl sym">%</span>s<span class="hl sym">-</span>dev'<span class="hl sym">,</span> 'OpenCV <span class="hl sym">%</span>s development package'<span class="hl sym">,</span> extra_depends<span class="hl sym">=</span>'$<span class="hl sym">{</span>PN<span class="hl sym">}-</span>dev'<span class="hl sym">)</span>
	do_split_packages<span class="hl sym">(</span>d<span class="hl sym">,</span> cv_libdir<span class="hl sym">,</span> '^lib<span class="hl sym">(</span>.<span class="hl sym">*)</span>\.so\.<span class="hl sym">*</span>'<span class="hl sym">,</span> 'lib<span class="hl sym">%</span>s'<span class="hl sym">,</span> 'OpenCV <span class="hl sym">%</span>s library'<span class="hl sym">,</span> extra_depends<span class="hl sym">=</span>''<span class="hl sym">,</span> allow_links<span class="hl sym">=</span><span class="hl kwa">True</span><span class="hl sym">)</span>
<span class="hl sym">}</span>

FILES_$<span class="hl sym">{</span>PN<span class="hl sym">}-</span>doc <span class="hl sym">+=</span> <span class="hl str">"${datadir}/opencv/"</span>
FILES_$<span class="hl sym">{</span>PN<span class="hl sym">} =</span> <span class="hl str">"${bindir}"</span>
FILES_$<span class="hl sym">{</span>PN<span class="hl sym">}-</span>dbg <span class="hl sym">+=</span> <span class="hl str">"${libdir}/.debug"</span>
FILES_$<span class="hl sym">{</span>PN<span class="hl sym">}-</span>dev <span class="hl sym">=</span> <span class="hl str">"${includedir} ${libdir}/pkgconfig"</span>

DESCRIPTION_python<span class="hl sym">-</span>opencv <span class="hl sym">=</span> <span class="hl str">"Python bindings to opencv"</span>
FILES_python<span class="hl sym">-</span>opencv <span class="hl sym">=</span> <span class="hl str">"${PYTHON_SITEPACKAGES_DIR}/*"</span>
RDEPENDS_python<span class="hl sym">-</span>opencv <span class="hl sym">=</span> <span class="hl str">"python-core"</span>

SRC_URI<span class="hl sym">[</span>md5sum<span class="hl sym">] =</span> <span class="hl str">"146a05005f2d2c16c4ee10ebd7f1dd58"</span>
SRC_URI<span class="hl sym">[</span>sha256sum<span class="hl sym">] =</span> <span class="hl str">"3a6ee888e4dd4ab7f2bc80d046688c099c6a95d1267af554b7c8f1543b66f21e"



Thanks~</span> 
</code></pre>
    <br>
    <br>
  </body>
</html>

--------------090706060907040001050103--
