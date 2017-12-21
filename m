Return-Path: <fzhang@sgl.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C46A8E00D9C; Thu, 21 Dec 2017 07:53:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 1267 seconds by postgrey-1.32 at yocto-www;
	Thu, 21 Dec 2017 07:53:31 PST
Received: from webmail.sgl.com (mail1.sgl.com [209.87.231.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58F5CE00D07
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 07:53:31 -0800 (PST)
Received: from [10.1.20.15] (unknown [10.1.20.15])
	by webmail.sgl.com (Postfix) with ESMTP id F0DB91D76F04D
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 10:29:16 -0500 (EST)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Fan Zhang <fzhang@sgl.com>
Message-ID: <f5f50e1c-defb-149f-f795-921f4c1e648b@sgl.com>
Date: Thu, 21 Dec 2017 10:32:21 -0500
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
Subject: How to config kernel in my own meta layer?
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
X-List-Received-Date: Thu, 21 Dec 2017 15:53:32 -0000
X-Groupsio-MsgNum: 39288
Content-Type: multipart/mixed; boundary="------------22AFB6C77A7285B492B9A46C"
Content-Language: en-US

--------------22AFB6C77A7285B492B9A46C
Content-Type: multipart/alternative;
 boundary="------------52FEAA35E07090F15F7897E5"

--------------52FEAA35E07090F15F7897E5
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Greetings,

I have a recipes that requires 128MB of CMA allocation for DMA. I 
followed the instruction in 
http://www.yoctoproject.org/docs/1.6/kernel-dev/kernel-dev.html#changing-the-configuration 
and did the following:

My recipes structure:

meta-mylayer\recipes-my\uio-test\

1. Then in uio-test folder, I have uio-test.bb that created by 
recipetool (in general) with some modification. uio-test.bb looks like 
this:

#------------------------------------------------------------------

# Recipe created by recipetool
# This is the basis of a recipe and may need further editing in order to 
be fully functional.
# (Feel free to remove these comments when editing.)

# Unable to find any files that looked like license statements. Check 
the accompanying
# documentation and source headers and set LICENSE and LIC_FILES_CHKSUM 
accordingly.
#
# NOTE: LICENSE is being set to "CLOSED" to allow you to at least start 
building - if
# this is not accurate with respect to the licensing of the software 
being built (it
# will not be in most cases) you must specify the correct value before 
using this
# recipe for anything other than initial testing/development!
LICENSE = "CLOSED"
LIC_FILES_CHKSUM = ""

# No information for SRC_URI yet (only an external source tree was 
specified)
PV = "2.0.2"
SRC_URI = "file://src"

# NOTE: this is a Makefile-only piece of software, so we cannot generate 
much of the
# recipe automatically - you will need to examine the Makefile yourself 
and ensure
# that the appropriate arguments are passed in.

do_configure () {
     # Specify any needed configure commands here
     :
}

do_compile () {
     # You will almost certainly need to add additional arguments here
     cd ${WORKDIR}/src
     oe_runmake
}

FILES_${PN} = "/www/pages /etc/lighttpd.d"
do_install () {
     # This is a guess; additional arguments may be required
     cd ${WORKDIR}/src
     oe_runmake install 'DESTDIR=${D}'
}

DEPENDS = "libgcc boost"
RDEPENDS_${PN} = "libgcc boost-thread boost-system lighttpd 
lighttpd-module-cgi"
#------------------------------------------------------------------

2. Also in uio-test folder, I have uio-test.bbappend file with these 
contents:

#------------------------------------------------------------------

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://uio-test.cfg"

#----------------------^^^^^^^^^^^^^^^^^^^-------------------------

3. In uio-test/files folder, I have uio-test.cfg with the following 
contents:


#------------------------------------------------------------------

CONFIG_CMA_ALIGNMENT=8
CONFIG_CMA=y
CONFIG_CMA_AREAS=7
CONFIG_DMA_CMA=y
CONFIG_CMA_SIZE_MBYTES=128
CONFIG_CMA_SIZE_SEL_MBYTES=y
CONFIG_DMADEVICES=y
CONFIG_DMA_ENGINE=y
CONFIG_DMA_OF=y
CONFIG_XILINX_DMA_ENGINES=y
CONFIG_XILINX_DMA=y
CONFIG_DMA_API_DEBUG=y
CONFIG_HAS_DMA=y
CONFIG_NEED_DMA_MAP_STATE=y
CONFIG_HAVE_DMA_CONTIGUOUS=y
CONFIG_HAVE_DMA_API_DEBUG=y
CONFIG_HAVE_GENERIC_DMA_COHERENT=y
CONFIG_ARM_DMA_MEM_BUFFERABLE=y
CONFIG_ZONE_DMA_FLAG=0
#----------------------^^^^^^^^^^^^^^^^^^^-------------------------

My question: I think the cfg file is being parsed because if I change 
the folder name files to something else, bitbake will complaint about 
not being able to find uio-test.cfg. However, the final .config in built 
do not have the CMA allocated. My meta layer does have a priority higher 
than the upstream layers. What else can cause the problem here? Any 
suggestions? Thanks.

Fan Zhang


--------------52FEAA35E07090F15F7897E5
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Greetings,</p>
    <p>I have a recipes that requires 128MB of CMA allocation for DMA. I
      followed the instruction in  <a moz-do-not-send="true"
href="http://www.yoctoproject.org/docs/1.6/kernel-dev/kernel-dev.html#changing-the-configuration">http://www.yoctoproject.org/docs/1.6/kernel-dev/kernel-dev.html#changing-the-configuration</a>
      and did the following:</p>
    <p>My recipes structure: <br>
    </p>
    <p>meta-mylayer\recipes-my\uio-test\</p>
    <p>1. Then in uio-test folder, I have uio-test.bb that created by
      recipetool (in general) with some modification. uio-test.bb looks
      like this: <br>
    </p>
    <p><font size="-1" face="Batang">#------------------------------------------------------------------<br>
      </font></p>
    <p><font size="-1" face="Batang"># Recipe created by recipetool</font><font
        face="Batang"><br>
        <font size="-1"># This is the basis of a recipe and may need
          further editing in order to be fully functional.</font><br>
        <font size="-1"># (Feel free to remove these comments when
          editing.)</font><br>
        <br>
        <font size="-1"># Unable to find any files that looked like
          license statements. Check the accompanying</font><br>
        <font size="-1"># documentation and source headers and set
          LICENSE and LIC_FILES_CHKSUM accordingly.</font><br>
        <font size="-1">#</font><br>
        <font size="-1"># NOTE: LICENSE is being set to "CLOSED" to
          allow you to at least start building - if</font><br>
        <font size="-1"># this is not accurate with respect to the
          licensing of the software being built (it</font><br>
        <font size="-1"># will not be in most cases) you must specify
          the correct value before using this</font><br>
        <font size="-1"># recipe for anything other than initial
          testing/development!</font><br>
        <font size="-1">LICENSE = "CLOSED"</font><br>
        <font size="-1">LIC_FILES_CHKSUM = ""</font><br>
        <br>
        <font size="-1"># No information for SRC_URI yet (only an
          external source tree was specified)</font><br>
        <font size="-1">PV = "2.0.2"</font><br>
        <font size="-1">SRC_URI = <a class="moz-txt-link-rfc2396E" href="file://src">"file://src"</a></font><br>
        <br>
        <font size="-1"># NOTE: this is a Makefile-only piece of
          software, so we cannot generate much of the</font><br>
        <font size="-1"># recipe automatically - you will need to
          examine the Makefile yourself and ensure</font><br>
        <font size="-1"># that the appropriate arguments are passed in.</font><br>
        <br>
        <font size="-1">do_configure () {</font><br>
        <font size="-1">    # Specify any needed configure commands here</font><br>
        <font size="-1">    :</font><br>
        <font size="-1">}</font><br>
        <br>
        <font size="-1">do_compile () {</font><br>
        <font size="-1">    # You will almost certainly need to add
          additional arguments here</font><br>
        <font size="-1">    cd ${WORKDIR}/src</font><br>
        <font size="-1">    oe_runmake</font><br>
        <font size="-1">}</font><br>
        <br>
        <font size="-1">FILES_${PN} = "/www/pages /etc/lighttpd.d"</font><br>
        <font size="-1">do_install () {</font><br>
        <font size="-1">    # This is a guess; additional arguments may
          be required</font><br>
        <font size="-1">    cd ${WORKDIR}/src</font><br>
        <font size="-1">    oe_runmake install 'DESTDIR=${D}'</font><br>
        <font size="-1">}</font><br>
        <br>
        <font size="-1">DEPENDS = "libgcc boost"</font><br>
        <font size="-1">RDEPENDS_${PN} = "libgcc boost-thread
          boost-system lighttpd lighttpd-module-cgi"</font><br>
        <font size="-1">#------------------------------------------------------------------</font></font><br>
      <br>
    </p>
    <p>2. Also in uio-test folder, I have uio-test.bbappend file with
      these contents:</p>
    <p><font size="-1" face="Batang">#------------------------------------------------------------------</font></p>
    <p><font face="Batang">FILESEXTRAPATHS_prepend :=
        "${THISDIR}/files:"<br>
        SRC_URI += <a class="moz-txt-link-rfc2396E" href="file://uio-test.cfg">"file://uio-test.cfg"</a></font></p>
    <p><font size="-1" face="Batang">#----------------------^^^^^^^^^^^^^^^^^^^-------------------------</font></p>
    <p>3. In uio-test/files folder, I have uio-test.cfg with the
      following contents: <font size="-1"><br>
      </font><font size="-1" face="Batang"></font></p>
    <p><br>
      <font size="-1" face="Batang"><font size="-1" face="Batang">#------------------------------------------------------------------</font></font></p>
    <p><font size="-1" face="Batang">CONFIG_CMA_ALIGNMENT=8<br>
        CONFIG_CMA=y<br>
        CONFIG_CMA_AREAS=7<br>
        CONFIG_DMA_CMA=y<br>
        CONFIG_CMA_SIZE_MBYTES=128<br>
        CONFIG_CMA_SIZE_SEL_MBYTES=y<br>
        CONFIG_DMADEVICES=y<br>
        CONFIG_DMA_ENGINE=y<br>
        CONFIG_DMA_OF=y<br>
        CONFIG_XILINX_DMA_ENGINES=y<br>
        CONFIG_XILINX_DMA=y<br>
        CONFIG_DMA_API_DEBUG=y<br>
        CONFIG_HAS_DMA=y<br>
        CONFIG_NEED_DMA_MAP_STATE=y<br>
        CONFIG_HAVE_DMA_CONTIGUOUS=y<br>
        CONFIG_HAVE_DMA_API_DEBUG=y<br>
        CONFIG_HAVE_GENERIC_DMA_COHERENT=y<br>
        CONFIG_ARM_DMA_MEM_BUFFERABLE=y<br>
        CONFIG_ZONE_DMA_FLAG=0</font><br>
      <font size="-1" face="Batang"><font size="-1" face="Batang">#----------------------^^^^^^^^^^^^^^^^^^^-------------------------</font></font></p>
    <p>My question: I think the cfg file is being parsed because if I
      change the folder name files to something else, bitbake will
      complaint about not being able to find uio-test.cfg. However, the
      final .config in built do not have the CMA allocated. My meta
      layer does have a priority higher than the upstream layers. What
      else can cause the problem here? Any suggestions? Thanks. <font
        size="-1" face="Batang"><font size="-1" face="Batang"><br>
        </font></font></p>
    <p><font size="-1" face="Batang"><font size="-1" face="Batang">Fan
          Zhang<br>
        </font></font></p>
  </body>
</html>

--------------52FEAA35E07090F15F7897E5--

--------------22AFB6C77A7285B492B9A46C
Content-Type: text/x-vcard; charset=utf-8;
 name="fzhang.vcf"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="fzhang.vcf"

begin:vcard
fn:Fan Zhang
n:Zhang;Fan
org:Sander Geophysics Ltd. 
email;internet:fzhang@sgl.com
title:Electronics Design Engineer
tel;work:(613)521-9626
version:2.1
end:vcard


--------------22AFB6C77A7285B492B9A46C--
