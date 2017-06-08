Return-Path: <jakob.hasse@smart-home-technology.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02F30E00BF6; Thu,  8 Jun 2017 09:18:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.26.49.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mxout014.mail.hostpoint.ch (mxout014.mail.hostpoint.ch
	[217.26.49.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A9D0E00B18
	for <yocto@yoctoproject.org>; Thu,  8 Jun 2017 09:18:35 -0700 (PDT)
Received: from [10.0.2.45] (helo=asmtp012.mail.hostpoint.ch)
	by mxout014.mail.hostpoint.ch with esmtp (Exim 4.89 (FreeBSD))
	(envelope-from <jakob.hasse@smart-home-technology.ch>)
	id 1dJ08Z-000LaR-50; Thu, 08 Jun 2017 18:18:19 +0200
Received: from [2a02:168:698a:0:1121:2c11:a218:2e9f]
	by asmtp012.mail.hostpoint.ch with esmtpa (Exim 4.89 (FreeBSD))
	(envelope-from <jakob.hasse@smart-home-technology.ch>)
	id 1dJ08Z-000154-2A; Thu, 08 Jun 2017 18:18:19 +0200
X-Authenticated-Sender-Id: jakob.hasse@smart-home-technology.ch
To: Tim Orling <ticotimo@gmail.com>
References: <a35f0a1e-369d-2868-c785-d044e5436e0a@smart-home-technology.ch>
	<B23DE4404747DE4181D616A0059CCECE7C30D8BB@IRSMSX104.ger.corp.intel.com>
	<023da786-5e3c-9bf8-8e35-e3fe052d188a@smart-home-technology.ch>
	<AA9871D8-4A73-4F23-A0A7-6520A235B641@gmail.com>
From: Jakob Hasse <jakob.hasse@smart-home-technology.ch>
Message-ID: <fa24f7f0-8194-2c01-64b0-04614283be40@smart-home-technology.ch>
Date: Thu, 8 Jun 2017 18:18:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <AA9871D8-4A73-4F23-A0A7-6520A235B641@gmail.com>
Cc: Yocto List <yocto@yoctoproject.org>
Subject: Re: Building boost-python
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
X-List-Received-Date: Thu, 08 Jun 2017 16:18:38 -0000
Content-Type: multipart/alternative;
	boundary="------------562AF1EA17A508EBDA0B4B53"
Content-Language: de-DE

--------------562AF1EA17A508EBDA0B4B53
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hey Tim,

I'm pretty sure that it works now with the ros-solution (haven't double 
checked and cleaned and what not).
So thanks!

Best Regards,
Jakob

On 08.06.2017 07:41, Tim Orling wrote:
> You should do what meta-ros did:
> https://github.com/bmwcarit/meta-ros/blob/master/recipes-support/boost/boost_%25.bbappend
>
>
> On Jun 7, 2017, at 3:46 AM, Jakob Hasse 
> <jakob.hasse@smart-home-technology.ch 
> <mailto:jakob.hasse@smart-home-technology.ch>> wrote:
>
>>
>>
>> On 07.06.2017 11:59, VanCutsem, Geoffroy wrote:
>>>
>>>> -----Original Message-----
>>>> From: yocto-bounces@yoctoproject.org 
>>>> <mailto:yocto-bounces@yoctoproject.org> [mailto:yocto-
>>>> bounces@yoctoproject.org <mailto:bounces@yoctoproject.org>] On 
>>>> Behalf Of Jakob Hasse
>>>> Sent: Wednesday, June 7, 2017 11:48 AM
>>>> To: Yocto List <yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>>
>>>> Subject: [yocto] Building boost-python
>>>>
>>>> Hello,
>>>>
>>>> One of my layers needs boost-python.
>>>> When I try to build boost-python with bitbake, it complains:
>>>>
>>>> ERROR: Nothing PROVIDES 'boost-python'
>>>>
>>>> How can I fix this?
>>>> Boost itself builds and I also included
>>>> PACKAGECONFIG_pn_boost = "python"
>>>> without any effect.
>>> I believe the correct spelling is:
>>> PACKAGECONFIG_pn-boost = "python"
>>> (note the hyphen instead of underscore)
>> Yes, I saw it somewhere else now with a hyphen, too, but even with 
>> the corrected local.conf, the problem still remains.
>> Bitbake quits with the same error message as before
>>>
>>>> My bblayers.conf is here:
>>>>
>>>> # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf #
>>>> changes incompatibly LCONF_VERSION = "6"
>>>>
>>>> BBPATH = "${TOPDIR}"
>>>> BBFILES ?= ""
>>>>
>>>> BBLAYERS ?= " \
>>>>    /usr/local/dey-2.0/sources/poky/meta \
>>>>    /usr/local/dey-2.0/sources/poky/meta-yocto \
>>>>    /usr/local/dey-2.0/sources/poky/meta-yocto-bsp \
>>>>    /usr/local/dey-2.0/sources/meta-openembedded/meta-oe \
>>>>    /usr/local/dey-2.0/sources/meta-openembedded/meta-python \
>>>> /usr/local/dey-2.0/sources/meta-openembedded/meta-networking \
>>>> /usr/local/dey-2.0/sources/meta-openembedded/meta-webserver \
>>>>    /usr/local/dey-2.0/sources/meta-qt5 \
>>>>    /usr/local/dey-2.0/sources/meta-swupdate \
>>>>    /usr/local/dey-2.0/sources/meta-fsl-arm \
>>>>    /usr/local/dey-2.0/sources/meta-fsl-demos \
>>>>    /usr/local/dey-2.0/sources/meta-digi/meta-digi-arm \
>>>>    /usr/local/dey-2.0/sources/meta-digi/meta-digi-dey \
>>>>    /usr/local/dey-2.0/sources/meta-java/ \
>>>>    /usr/local/dey-2.0/sources/meta-iot-cloud/ \
>>>>
>>>>    "
>>>> BBLAYERS_NON_REMOVABLE ?= " \
>>>>    /usr/local/dey-2.0/sources/poky/meta \
>>>>    /usr/local/dey-2.0/sources/poky/meta-yocto \
>>>>    "
>>>>
>>>> Any help is welcome!
>>>> Jakob
>>>>
>>>> --
>>>> Jakob Hasse
>>>> Software Developement
>>>>
>>>> E: jakob.hasse@smart-home-technology.ch 
>>>> <mailto:jakob.hasse@smart-home-technology.ch>
>>>> T: +41 44 552 02 66
>>>>
>>>> Smart Home Technology GmbH
>>>> www.smart-home-technology.ch <http://www.smart-home-technology.ch>
>>>>
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>> -- 
>> Jakob Hasse
>> Software Developement
>>
>> E: jakob.hasse@smart-home-technology.ch 
>> <mailto:jakob.hasse@smart-home-technology.ch>
>> T: +41 44 552 02 66
>>
>> Smart Home Technology GmbH
>> www.smart-home-technology.ch <http://www.smart-home-technology.ch>
>>
>> -- 
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>> https://lists.yoctoproject.org/listinfo/yocto

-- 
Jakob Hasse
Software Developement

E: jakob.hasse@smart-home-technology.ch
T: +41 44 552 02 66

Smart Home Technology GmbH
www.smart-home-technology.ch


--------------562AF1EA17A508EBDA0B4B53
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Hey Tim,<br>
    <br>
    I'm pretty sure that it works now with the ros-solution (haven't
    double checked and cleaned and what not).<br>
    So thanks!<br>
    <br>
    Best Regards,<br>
    Jakob<br>
    <br>
    <div class="moz-cite-prefix">On 08.06.2017 07:41, Tim Orling wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:AA9871D8-4A73-4F23-A0A7-6520A235B641@gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=utf-8">
      <div>You should do what meta-ros did:</div>
      <div id="AppleMailSignature"><a
href="https://github.com/bmwcarit/meta-ros/blob/master/recipes-support/boost/boost_%25.bbappend"
          moz-do-not-send="true">https://github.com/bmwcarit/meta-ros/blob/master/recipes-support/boost/boost_%25.bbappend</a><br>
        <br>
      </div>
      <div><br>
        On Jun 7, 2017, at 3:46 AM, Jakob Hasse &lt;<a
          href="mailto:jakob.hasse@smart-home-technology.ch"
          moz-do-not-send="true">jakob.hasse@smart-home-technology.ch</a>&gt;
        wrote:<br>
        <br>
      </div>
      <blockquote type="cite">
        <div><span></span><br>
          <span></span><br>
          <span>On 07.06.2017 11:59, VanCutsem, Geoffroy wrote:</span><br>
          <blockquote type="cite"><span></span><br>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>-----Original Message-----</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>From: <a
                  href="mailto:yocto-bounces@yoctoproject.org"
                  moz-do-not-send="true">yocto-bounces@yoctoproject.org</a>
                [<a class="moz-txt-link-freetext" href="mailto:yocto">mailto:yocto</a>-</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span><a
                  href="mailto:bounces@yoctoproject.org"
                  moz-do-not-send="true">bounces@yoctoproject.org</a>]
                On Behalf Of Jakob Hasse</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>Sent: Wednesday, June 7, 2017
                11:48 AM</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>To: Yocto List &lt;<a
                  href="mailto:yocto@yoctoproject.org"
                  moz-do-not-send="true">yocto@yoctoproject.org</a>&gt;</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>Subject: [yocto] Building
                boost-python</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span></span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>Hello,</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span></span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>One of my layers needs
                boost-python.</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>When I try to build
                boost-python with bitbake, it complains:</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span></span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>ERROR: Nothing PROVIDES
                'boost-python'</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span></span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>How can I fix this?</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>Boost itself builds and I also
                included</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>PACKAGECONFIG_pn_boost =
                "python"</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>without any effect.</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite"><span>I believe the correct spelling
              is:</span><br>
          </blockquote>
          <blockquote type="cite"><span>PACKAGECONFIG_pn-boost =
              "python"</span><br>
          </blockquote>
          <blockquote type="cite"><span>(note the hyphen instead of
              underscore)</span><br>
          </blockquote>
          <span>Yes, I saw it somewhere else now with a hyphen, too, but
            even with the corrected local.conf, the problem still
            remains.</span><br>
          <span>Bitbake quits with the same error message as before</span><br>
          <blockquote type="cite"><span></span><br>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>My bblayers.conf is here:</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span></span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span># LAYER_CONF_VERSION is
                increased each time build/conf/bblayers.conf #</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>changes incompatibly
                LCONF_VERSION = "6"</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span></span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>BBPATH = "${TOPDIR}"</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>BBFILES ?= ""</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span></span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>BBLAYERS ?= " \</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>
                   /usr/local/dey-2.0/sources/poky/meta \</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>
                   /usr/local/dey-2.0/sources/poky/meta-yocto \</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>
                   /usr/local/dey-2.0/sources/poky/meta-yocto-bsp \</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>
                   /usr/local/dey-2.0/sources/meta-openembedded/meta-oe
                \</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>
                   /usr/local/dey-2.0/sources/meta-openembedded/meta-python
                \</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>/usr/local/dey-2.0/sources/meta-openembedded/meta-networking
                \</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>/usr/local/dey-2.0/sources/meta-openembedded/meta-webserver
                \</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>
                   /usr/local/dey-2.0/sources/meta-qt5 \</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>
                   /usr/local/dey-2.0/sources/meta-swupdate \</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>
                   /usr/local/dey-2.0/sources/meta-fsl-arm \</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>
                   /usr/local/dey-2.0/sources/meta-fsl-demos \</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>
                   /usr/local/dey-2.0/sources/meta-digi/meta-digi-arm \</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>
                   /usr/local/dey-2.0/sources/meta-digi/meta-digi-dey \</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>
                   /usr/local/dey-2.0/sources/meta-java/ \</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>
                   /usr/local/dey-2.0/sources/meta-iot-cloud/ \</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span></span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>    "</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>BBLAYERS_NON_REMOVABLE ?= " \</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>
                   /usr/local/dey-2.0/sources/poky/meta \</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>
                   /usr/local/dey-2.0/sources/poky/meta-yocto \</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>    "</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span></span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>Any help is welcome!</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>Jakob</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span></span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>--</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>Jakob Hasse</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>Software Developement</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span></span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>E: <a
                  href="mailto:jakob.hasse@smart-home-technology.ch"
                  moz-do-not-send="true">jakob.hasse@smart-home-technology.ch</a></span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>T: +41 44 552 02 66</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span></span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>Smart Home Technology GmbH</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span><a
                  href="http://www.smart-home-technology.ch"
                  moz-do-not-send="true">www.smart-home-technology.ch</a></span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span></span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>--</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>_______________________________________________</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span>yocto mailing list</span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span><a
                  href="mailto:yocto@yoctoproject.org"
                  moz-do-not-send="true">yocto@yoctoproject.org</a></span><br>
            </blockquote>
          </blockquote>
          <blockquote type="cite">
            <blockquote type="cite"><span><a
                  href="https://lists.yoctoproject.org/listinfo/yocto"
                  moz-do-not-send="true">https://lists.yoctoproject.org/listinfo/yocto</a></span><br>
            </blockquote>
          </blockquote>
          <span></span><br>
          <span>-- </span><br>
          <span>Jakob Hasse</span><br>
          <span>Software Developement</span><br>
          <span></span><br>
          <span>E: <a
              href="mailto:jakob.hasse@smart-home-technology.ch"
              moz-do-not-send="true">jakob.hasse@smart-home-technology.ch</a></span><br>
          <span>T: +41 44 552 02 66</span><br>
          <span></span><br>
          <span>Smart Home Technology GmbH</span><br>
          <span><a href="http://www.smart-home-technology.ch"
              moz-do-not-send="true">www.smart-home-technology.ch</a></span><br>
          <span></span><br>
          <span>-- </span><br>
          <span>_______________________________________________</span><br>
          <span>yocto mailing list</span><br>
          <span><a href="mailto:yocto@yoctoproject.org"
              moz-do-not-send="true">yocto@yoctoproject.org</a></span><br>
          <span><a href="https://lists.yoctoproject.org/listinfo/yocto"
              moz-do-not-send="true">https://lists.yoctoproject.org/listinfo/yocto</a></span><br>
        </div>
      </blockquote>
    </blockquote>
    <br>
    <pre class="moz-signature" cols="72">-- 
Jakob Hasse
Software Developement

E: <a class="moz-txt-link-abbreviated" href="mailto:jakob.hasse@smart-home-technology.ch">jakob.hasse@smart-home-technology.ch</a>
T: +41 44 552 02 66 

Smart Home Technology GmbH
<a class="moz-txt-link-abbreviated" href="http://www.smart-home-technology.ch">www.smart-home-technology.ch</a></pre>
  </body>
</html>

--------------562AF1EA17A508EBDA0B4B53--
