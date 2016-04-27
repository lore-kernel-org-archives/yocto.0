Return-Path: <lars@visionweeding.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD1F4E00D8E; Wed, 27 Apr 2016 06:05:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Wed, 27 Apr 2016 06:05:04 PDT
Received: from mailrelay8.public.one.com (mailrelay8.public.one.com
	[91.198.169.216])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8B87E00D86
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 06:05:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=visionweeding.com; s=20140924;
	h=from:subject:date:message-id:to:mime-version:content-type:in-reply-to:
	references; bh=HWhaKMQ6jqulEK85eODeGuZ+RyqnTF8hxYrpX9z5LrQ=;
	b=bwa79lh/whs9vlqBW+uzsKWBUKZJTHvoc7DTHcBRx1P9VCxBiRxcSgkbDSU+r5Fim1wmYIbDqIXXl
	Gy/Khti/MfMh74ZbRNMeWbOT5i2tJV8dzLsWAYFIXhRVLBDNpJP3FKh78ZOWZGFvoy8aEPNUxxa83l
	xlOhKVWw3H6F3svk=
X-HalOne-Cookie: 83cdcb7dcac5742544a68d2117e4782753940395
X-HalOne-ID: 822c9134-0c78-11e6-bb5b-b82a72cffc46
Received: from [192.168.1.194] (unknown [86.58.170.151])
	by smtpfilter4.public.one.com (Halon Mail Gateway) with ESMTPSA
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 13:04:00 +0000 (UTC)
To: yocto@yoctoproject.org
References: <5720A4B2.2060509@visionweeding.com>
	<5720AEE7.8050905@mlbassoc.com>
From: Lars Larsen <lars@visionweeding.com>
Message-ID: <5720B8BF.6060000@visionweeding.com>
Date: Wed, 27 Apr 2016 15:03:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <5720AEE7.8050905@mlbassoc.com>
Subject: Re: Manipulating code and Building in offline environment
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
X-List-Received-Date: Wed, 27 Apr 2016 13:05:06 -0000
Content-Type: multipart/alternative;
	boundary="------------080009040804040103030109"

--------------080009040804040103030109
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit



On 2016-04-27 14:21, Gary Thomas wrote:
> On 2016-04-27 13:38, Lars Larsen wrote:
>> Hello
>>
>> I have 2 questions
>>
>> I have finally managed to build an image like I want it.
>>
>>
>> I consists of a kernel.
>>
>> The ROS framework.
>>
>> And our proprietary software under git control
>>
>>
>> What I want to achieve is the following:
>>
>> When online it should fetch the latest commit (or what ever 
>> branch/tag) from our git repo.
>>
>> It should be possible to take a laptop with a fresh checkout of all 
>> the software, go to the field where the is NO
>> INTERNET access, and be able to patch our code on the spot ,and build 
>> fresh images, for the target.
>>
>> When online in our office environment all our own software is 
>> correctly checked out from our git repo. and build.
>> Beautifully.....
>>
>> But when offline ( I disconnect the LAN ) I continually gets errors 
>> like “Failure expanding variable SRCPV” on our
>> software modules.
>>
>> I have following in build/conf/local.conf
>>
>>
>> BB_GENERATE_MIRROR_TARBALLS = "1"
>>
>> INHERIT += "own-mirrors"
>>
>> SOURCE_MIRROR_URL = "file://${DL_DIR}"
>>
>>
>> and I experimented with BB_FETCH_PREMIRRORONLY = "1"
>>
>> with no appearent effect
>>
>>
>> So question 1:
>>
>> How do I achieve the offline building. ?
>>
>> Is should be possible - right ?
>>
>>
>> Question 2:
>>
>> Where in the tree is the checked out source code located, that 
>> bitbake compiles from.
>>
>
> I do this all the time successfully.
>
> What is your target and what recipe(s) are having issues?
>
> Note setting BB_NO_NETWORK = "1" in local.conf can help diagnose these 
> issues
>
>

Thanks for the quick response, I will be happy if you can help me solve 
this, since it's the last stone in our shoes before we go all in on yocto.


My target (at this time) is just a plain vanilla X86 platform - i might 
change in the furture.
The recipes that cause troubles, are those who examine my git repos
one example, I have several made from this template ($BRANCH is set by 
envoking scripts):

/DESCRIPTION = "Reflector deamon-  from local GIT"//
//# The initscript reflectord.sh that starts the deamon is installed 
with basic-framwork-files//
//HOMEPAGE = "www.visionweeding.com"//
//LICENSE = "CLOSED"//
//FPE_PATH = "/opt/fpe"//
//BRANCH ?="develop"//
//SRC_URI = 
"git:///eserver/GIT/autodiscover/;branch=${BRANCH};;name=discover " //
//SRCREV_discover= "${AUTOREV}"//
//SRCREV_FORMAT= "discover"//
//PV = "1.0.0+gitr${SRCPV}"//
//S = "${WORKDIR}/git"//
//inherit cmake//
//FILESEXTRAPATHS_prepend := "${THISDIR}/files:"//
//FILES_${PN} += "${FPE_PATH}/bin/reflectord \//
//        ${FPE_PATH}/bin/SearchBeam \//
//  "//
//do_install_append() {//
//
//    bbnote "Branch test BRANCH= ${BRANCH}"//
////
//      install -d ${D}${FPE_PATH}/bin//
////
//    rm  -rf ${FPE_PATH}/bin/.debug/*//
//    install -d ${D}${sysconfdir}/init.d //
//    install -m 0755 ${WORKDIR}/SearchBeam ${D}${FPE_PATH}/bin //
//    install -m 0755 ${WORKDIR}/reflectord ${D}${FPE_PATH}/bin//
////    }//
//

//
/

--------------080009040804040103030109
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <br>
    <div class="moz-cite-prefix">On 2016-04-27 14:21, Gary Thomas wrote:<br>
    </div>
    <blockquote cite="mid:5720AEE7.8050905@mlbassoc.com" type="cite">On
      2016-04-27 13:38, Lars Larsen wrote:
      <br>
      <blockquote type="cite">Hello
        <br>
        <br>
        I have 2 questions
        <br>
        <br>
        I have finally managed to build an image like I want it.
        <br>
        <br>
        <br>
        I consists of a kernel.
        <br>
        <br>
        The ROS framework.
        <br>
        <br>
        And our proprietary software under git control
        <br>
        <br>
        <br>
        What I want to achieve is the following:
        <br>
        <br>
        When online it should fetch the latest commit (or what ever
        branch/tag) from our git repo.
        <br>
        <br>
        It should be possible to take a laptop with a fresh checkout of
        all the software, go to the field where the is NO
        <br>
        INTERNET access, and be able to patch our code on the spot ,and
        build fresh images, for the target.
        <br>
        <br>
        When online in our office environment all our own software is
        correctly checked out from our git repo. and build.
        <br>
        Beautifully.....
        <br>
        <br>
        But when offline ( I disconnect the LAN ) I continually gets
        errors like “Failure expanding variable SRCPV” on our
        <br>
        software modules.
        <br>
        <br>
        I have following in build/conf/local.conf
        <br>
        <br>
        <br>
        BB_GENERATE_MIRROR_TARBALLS = "1"
        <br>
        <br>
        INHERIT += "own-mirrors"
        <br>
        <br>
        SOURCE_MIRROR_URL = <a class="moz-txt-link-rfc2396E" href="file://${DL_DIR}">"file://${DL_DIR}"</a>
        <br>
        <br>
        <br>
        and I experimented with BB_FETCH_PREMIRRORONLY = "1"
        <br>
        <br>
        with no appearent effect
        <br>
        <br>
        <br>
        So question 1:
        <br>
        <br>
        How do I achieve the offline building. ?
        <br>
        <br>
        Is should be possible - right ?
        <br>
        <br>
        <br>
        Question 2:
        <br>
        <br>
        Where in the tree is the checked out source code located, that
        bitbake compiles from.
        <br>
        <br>
      </blockquote>
      <br>
      I do this all the time successfully.
      <br>
      <br>
      What is your target and what recipe(s) are having issues?
      <br>
      <br>
      Note setting BB_NO_NETWORK = "1" in local.conf can help diagnose
      these issues
      <br>
      <br>
      <br>
    </blockquote>
    <br>
    Thanks for the quick response, I will be happy if you can help me
    solve this, since it's the last stone in our shoes before we go all
    in on yocto.<br>
    <br>
    <br>
    My target (at this time) is just a plain vanilla X86 platform - i
    might change in the furture.<br>
    The recipes that cause troubles, are those who examine my git repos<br>
    one example, I have several made from this template ($BRANCH is set
    by envoking scripts):<br>
    <br>
    <i>DESCRIPTION = "Reflector deamon-  from local GIT"</i><i><br>
    </i><i># The initscript reflectord.sh that starts the deamon is
      installed with basic-framwork-files</i><i><br>
    </i><i>HOMEPAGE = "<a class="moz-txt-link-abbreviated" href="http://www.visionweeding.com">www.visionweeding.com</a>"</i><i><br>
    </i><i>LICENSE = "CLOSED"</i><i><br>
    </i><i>FPE_PATH = "/opt/fpe"</i><i><br>
    </i><i>BRANCH ?="develop"</i><i><br>
    </i><i>SRC_URI = 
      "git:///eserver/GIT/autodiscover/;branch=${BRANCH};;name=discover
      "  </i><i><br>
    </i><i>SRCREV_discover= "${AUTOREV}"</i><i><br>
    </i><i>SRCREV_FORMAT= "discover"</i><i><br>
    </i><i>PV = "1.0.0+gitr${SRCPV}"</i><i><br>
    </i><i>S = "${WORKDIR}/git"</i><i><br>
    </i><i>inherit cmake</i><i><br>
    </i><i>FILESEXTRAPATHS_prepend := "${THISDIR}/files:"</i><i><br>
    </i><i>FILES_${PN} += "${FPE_PATH}/bin/reflectord \</i><i><br>
    </i><i>        ${FPE_PATH}/bin/SearchBeam \</i><i><br>
    </i><i>  "</i><i><br>
    </i><i>do_install_append() {</i><i><br>
    </i><i><br>
    </i><i>    bbnote "Branch test BRANCH= ${BRANCH}"</i><i><br>
    </i><i>    </i><i><br>
    </i><i>      install -d ${D}${FPE_PATH}/bin</i><i><br>
    </i><i>    </i><i><br>
    </i><i>    rm  -rf ${FPE_PATH}/bin/.debug/*</i><i><br>
    </i><i>    install -d ${D}${sysconfdir}/init.d    </i><i><br>
    </i><i>    install -m 0755 ${WORKDIR}/SearchBeam
      ${D}${FPE_PATH}/bin    </i><i><br>
    </i><i>    install -m 0755 ${WORKDIR}/reflectord ${D}${FPE_PATH}/bin</i><i><br>
    </i><i></i><i>    }</i><i><br>
    </i><i><br>
      <br>
          </i><i><br>
    </i><br>
  </body>
</html>

--------------080009040804040103030109--
