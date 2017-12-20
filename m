Return-Path: <mircea.gliga@vitheia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EFB33E00C0F; Wed, 20 Dec 2017 04:19:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from zeus.integrasoft.ro (zeus.integrasoft.ro [193.231.162.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D07FE00C0F
	for <yocto@yoctoproject.org>; Wed, 20 Dec 2017 04:19:19 -0800 (PST)
Received: from [193.231.162.34] (echelon.integrasoft.ro [193.231.162.34])
	(authenticated bits=0)
	by zeus.integrasoft.ro (8.14.7/8.14.7) with ESMTP id vBKCJHo1029265
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NO)
	for <yocto@yoctoproject.org>; Wed, 20 Dec 2017 14:19:18 +0200
To: yocto@yoctoproject.org
References: <753da0b1-9a45-6ce7-3016-502689f2330a@vitheia.com>
	<CAJTo0LZk7TGDC4_Dc8ofO2_HCs3nGfK7htV9TjWv72xVSXFsmw@mail.gmail.com>
	<fa866786-a078-1c28-7686-143a86df0046@vitheia.com>
From: Mircea Gliga <mircea.gliga@vitheia.com>
Message-ID: <18319bfd-bb0f-07ca-5a95-5a03cbffd2d8@vitheia.com>
Date: Wed, 20 Dec 2017 14:19:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <fa866786-a078-1c28-7686-143a86df0046@vitheia.com>
Subject: Re: call custom sh script in do_compile
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
X-List-Received-Date: Wed, 20 Dec 2017 12:19:22 -0000
Content-Type: multipart/alternative;
	boundary="------------C60896B66CEE8D4F3F0F104A"
Content-Language: en-US

--------------C60896B66CEE8D4F3F0F104A
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


Let's put it the other way around. Does anyone know a recipe that uses 
an shell script to build something (which must set the environment 
correctly and call make itself) ?

Any hints are appreciated.

Thanks
Mircea

On 20/12/17 11:37, Mircea Gliga wrote:
> I'm trying to figure the proper way that the script *should* expect 
> parameters...
> Some excerpt:
>
> function buildConfiguration {
>     CONFIGURATION=${1}
>     BINARY_TYPE=${2}
>     MACHINE=${3}
>     DTB=${4}
>     KEY_DIR=${5}
>     MAKE_OPTIONS="-j 8 VERBOSE=1 V=1"
>     MAKE="make"
>     echo ""
>     echo "compiling u-boot configuration ${CONFIGURATION} ${DTB} 
> version: ${UBOOT_BUILD_VERSION}"
>
>     ${MAKE} ${MAKE_OPTIONS} HOSTCC="$HOSTCC"  clean VERBOSE=1
>     ${MAKE} ${MAKE_OPTIONS} VERBOSE=1 HOSTCC="$HOSTCC" 
> ${CONFIGURATION} VERBOSE=1
>     ${MAKE} ${MAKE_OPTIONS} HOSTCC="$HOSTCC"  tools VERBOSE=1
>     if [ "${DTB}" != "" ]; then
>         compileDts ../arch/arm/dts/at91-${MACHINE} ${KEY_DIR}
>     fi
>
>     ${MAKE} ${MAKE_OPTIONS} HOSTCC="$HOSTCC" VERBOSE=1
>
>     mkdir -p ${3}/binaries/
>     mv u-boot${DTB}.bin 
> ${3}/binaries/${MACHINE}-u-boot-${BINARY_TYPE}${DTB}.bin
> }
>
>
> buildConfiguration first_defconfig   "debug"   "first" "-dtb" "prod_keys"
> buildConfiguration second_defconfig   "loader"   "first" "-dtb" ""
> buildConfiguration [...]
> buildConfiguration [...]
>
>
> On 20/12/17 11:20, Burton, Ross wrote:
>> On 20 December 2017 at 09:08, Mircea Gliga <mircea.gliga@vitheia.com 
>> <mailto:mircea.gliga@vitheia.com>> wrote:
>>
>>     Hello
>>
>>     I have a build.sh script used to build outside yocto, after
>>     sourcing the build environment.
>>     I want to use the same build.sh script inside the recipe, in the
>>     do_compile task, something like:
>>
>>     do_compile () {
>>
>>      ./build.sh ${MACHINE}
>>     }
>>
>>     The build.sh script eventually calls make for several targets,
>>     release debug etc...
>>     The idea with this script is to be used both inside yocto and
>>     outside (after sourcing
>>     build/tmp/environment-setup-cortexa5hf-neon-poky-linux-gnueabi),
>>     by reusing the code.
>>
>>     What is the proper way to use a custom shell script to build things ?
>>     How to pass info from oe_runmake/EXTRA_OEMAKE ?
>>
>>
>> This depends on how build.sh expects to be given extra make arguments.
>>
>> Ross
>
>
>


--------------C60896B66CEE8D4F3F0F104A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    Let's put it the other way around. Does anyone know a recipe that
    uses an shell script to build something (which must set the
    environment correctly and call make itself) ?<br>
    <br>
    Any hints are appreciated.<br>
    <br>
    Thanks<br>
    Mircea<br>
    <br>
    <div class="moz-cite-prefix">On 20/12/17 11:37, Mircea Gliga wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:fa866786-a078-1c28-7686-143a86df0046@vitheia.com">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      I'm trying to figure the proper way that the script *should*
      expect parameters...<br>
      Some excerpt:<br>
      <br>
      function buildConfiguration {<br>
          CONFIGURATION=${1}<br>
          BINARY_TYPE=${2}<br>
          MACHINE=${3}<br>
          DTB=${4}<br>
          KEY_DIR=${5}<br>
          MAKE_OPTIONS="-j 8 VERBOSE=1 V=1"<br>
          MAKE="make"<br>
          echo ""<br>
          echo "compiling u-boot configuration ${CONFIGURATION} ${DTB}
      version: ${UBOOT_BUILD_VERSION}"<br>
          <br>
          ${MAKE} ${MAKE_OPTIONS} HOSTCC="$HOSTCC"  clean VERBOSE=1<br>
          ${MAKE} ${MAKE_OPTIONS} VERBOSE=1 HOSTCC="$HOSTCC" 
      ${CONFIGURATION} VERBOSE=1<br>
          ${MAKE} ${MAKE_OPTIONS} HOSTCC="$HOSTCC"  tools VERBOSE=1<br>
          if [ "${DTB}" != "" ]; then<br>
              compileDts ../arch/arm/dts/at91-${MACHINE} ${KEY_DIR}<br>
          fi<br>
      <br>
          ${MAKE} ${MAKE_OPTIONS} HOSTCC="$HOSTCC" VERBOSE=1<br>
      <br>
          mkdir -p ${3}/binaries/<br>
          mv u-boot${DTB}.bin
      ${3}/binaries/${MACHINE}-u-boot-${BINARY_TYPE}${DTB}.bin<br>
      } <br>
      <br>
      <br>
      buildConfiguration first_defconfig   "debug"   "first" "-dtb" 
      "prod_keys"<br>
      buildConfiguration second_defconfig   "loader"   "first" "-dtb" 
      ""<br>
      buildConfiguration [...]<br>
      buildConfiguration [...]<br>
      <br>
      <br>
      <div class="moz-cite-prefix">On 20/12/17 11:20, Burton, Ross
        wrote:<br>
      </div>
      <blockquote type="cite"
cite="mid:CAJTo0LZk7TGDC4_Dc8ofO2_HCs3nGfK7htV9TjWv72xVSXFsmw@mail.gmail.com">
        <div dir="ltr">On 20 December 2017 at 09:08, Mircea Gliga <span
            dir="ltr">&lt;<a href="mailto:mircea.gliga@vitheia.com"
              target="_blank" moz-do-not-send="true">mircea.gliga@vitheia.com</a>&gt;</span>
          wrote:<br>
          <div class="gmail_extra">
            <div class="gmail_quote">
              <blockquote class="gmail_quote" style="margin:0 0 0
                .8ex;border-left:1px #ccc solid;padding-left:1ex">Hello<br>
                <br>
                I have a build.sh script used to build outside yocto,
                after sourcing the build environment.<br>
                I want to use the same build.sh script inside the
                recipe, in the do_compile task, something like:<br>
                <br>
                do_compile () {<br>
                <br>
                 ./build.sh ${MACHINE}<br>
                }<br>
                <br>
                The build.sh script eventually calls make for several
                targets, release debug etc...<br>
                The idea with this script is to be used both inside
                yocto and outside (after sourcing<br>
                build/tmp/environment-setup-co<wbr>rtexa5hf-neon-poky-linux-gnuea<wbr>bi),
                by reusing the code.<br>
                <br>
                What is the proper way to use a custom shell script to
                build things ?<br>
                How to pass info from oe_runmake/EXTRA_OEMAKE ?<br>
              </blockquote>
              <div><br>
              </div>
              <div>This depends on how build.sh expects to be given
                extra make arguments.</div>
              <div><br>
              </div>
              <div>Ross</div>
            </div>
          </div>
        </div>
      </blockquote>
      <br>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------C60896B66CEE8D4F3F0F104A--
