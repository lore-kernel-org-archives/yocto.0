Return-Path: <yukatharsanij@tataelxsi.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DD40E0077F; Fri, 28 Nov 2014 02:00:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [134.170.132.127 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 1116 seconds by postgrey-1.32 at yocto-www;
	Fri, 28 Nov 2014 02:00:02 PST
Received: from APAC01-SG1-obe.outbound.protection.outlook.com
	(mail-sg1hn0127.outbound.protection.outlook.com [134.170.132.127])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B187CE006EF
	for <yocto@yoctoproject.org>; Fri, 28 Nov 2014 02:00:02 -0800 (PST)
Received: from [192.168.30.116] (59.160.207.43) by
	HKNPR04MB193.apcprd04.prod.outlook.com (10.242.105.14) with Microsoft
	SMTP Server (TLS) id 15.1.26.15; Fri, 28 Nov 2014 09:25:20 +0000
Message-ID: <54783F79.1080103@tataelxsi.co.in>
Date: Fri, 28 Nov 2014 14:55:13 +0530
From: Yukatharsani Jeyachandra <yukatharsanij@tataelxsi.co.in>
Organization: Tata Elxsi
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.1.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CANusJLONn2JMy-7nLY4EbZsjx3RT+H5brRyqevtq-rxWB=AsSA@mail.gmail.com>	<D4365608-70BA-4FF1-AF43-7C8334DA93BF@keylevel.com>	<CANusJLMp8wQXPQrefRpwwNxTh=A0yjAxoS1Svyso=w8fT99Zaw@mail.gmail.com>	<CANusJLMn_0V4SskWVHQSWqik-KHCsHAh9sf9uBMt52-AfH261g@mail.gmail.com>	<BE5DDCAC-2A40-4A50-BBD4-3D0C74BB7EAB@keylevel.com>
	<CANusJLPQk9_0Bo-xyj9AySdrqgSWGAvyP5Eu-U_F2H1iRJdLrA@mail.gmail.com>
In-Reply-To: <CANusJLPQk9_0Bo-xyj9AySdrqgSWGAvyP5Eu-U_F2H1iRJdLrA@mail.gmail.com>
X-Originating-IP: [59.160.207.43]
X-ClientProxiedBy: SINPR01CA0018.apcprd01.prod.exchangelabs.com
	(10.141.109.18) To HKNPR04MB193.apcprd04.prod.outlook.com
	(10.242.105.14)
X-Microsoft-Antispam: UriScan:;
X-Microsoft-Antispam: BCL:0;PCL:0;RULEID:;SRVR:HKNPR04MB193;
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0;PCL:0;RULEID:;SRVR:HKNPR04MB193;
X-Forefront-PRVS: 04097B7F7F
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(6049001)(51704005)(52164004)(52044002)(199003)(164054003)(377454003)(45984002)(24454002)(53754006)(189002)(377424004)(42186005)(105586002)(107886001)(106356001)(16601075003)(20776003)(99396003)(76176999)(95666004)(53806999)(87266999)(54356999)(43066003)(2351001)(107046002)(102836001)(21056001)(36756003)(65806001)(101416001)(4396001)(66066001)(64706001)(65956001)(93886004)(120916001)(65816999)(122386002)(71186001)(86362001)(50986999)(15202345003)(74482002)(33656002)(46102003)(84326002)(40100003)(450100001)(62966003)(110136001)(19617315012)(117156001)(77096003)(19580405001)(83506001)(77156002)(97736003)(15974865002)(59896002)(19580395003)(512944002)(87976001)(15975445006)(575784001)(80316001)(92726001)(80872002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HKNPR04MB193; H:[192.168.30.116];
	FPR:; SPF:None; MLV:sfv; PTR:InfoNoRecords; A:0; MX:1; LANG:en; 
X-Exchange-Antispam-Report-CFA-Test: BCL:0;PCL:0;RULEID:;SRVR:HKNPR04MB193;
X-OriginatorOrg: tataelxsi.co.in
Subject: Re: Creating a recipe to create /usr/local
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: yukatharsanij@tataelxsi.co.in
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 28 Nov 2014 10:00:15 -0000
Content-Type: multipart/alternative;
	boundary="------------050908030706000905000900"

--------------050908030706000905000900
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

Please add
     FILES_PN = "${prefix}/local/*"  line in your recipe.

Thanks,
yukatharsani J.

On 28-11-2014 14:50, Chan Kit Yu wrote:
> Not sure if you wanna read through the log file. I was initially
> dumbfounded but reading through the log I think I found the issue.
> Here's the main error (I think) that could have caused the failure.
> (my package name is "folder"):
>
> ERROR: folder not found in the base feeds (valleyisland_64
> corei7-64-intel-common corei7-64 core2-64 x86_64 noarch any all).
>
> I also attached the error log so feel free to parse it if you feel like it.
>
> Thanks,
> Chan Kit
>
>
> On Fri, Nov 28, 2014 at 4:40 PM, Chris Tapp <opensource@keylevel.com> wrote:
>> On 28 Nov 2014, at 01:55, Chan Kit Yu <yuchankit@gmail.com> wrote:
>>
>>> I would also like to add that bitbaking that recipe alone was fine but
>>> bitbaking my image to include that package failed.
>> I'm not sure what's going on - can you post the error message (or at least the relevant part)?
>>
>>> On Fri, Nov 28, 2014 at 9:43 AM, Chan Kit Yu <yuchankit@gmail.com> wrote:
>>>> Hi Chris,
>>>>
>>>> Thank you very much :-)
>>>> But it was no good. I still get the same error even with the "install" use.
>>>>
>>>> Here I attach the full recipe just in case I did wrong somewhere:
>>>>
>>>> SUMMARY = "Create /usr/local"
>>>> SECTION = "meta-networking"
>>>> LICENSE = "MIT"
>>>> LIC_FILES_CHKSUM =
>>>> "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
>>>> #INSANE_SKIP_${PN} = "installed-vs-shipped"
>>>>
>>>> do_install(){
>>>>         install -d  ${D}${prefix}/local/
>>>> }
>>>>
>>>> Chan Kit
>>>>
>>>>
>>>>
>>>> On Fri, Nov 28, 2014 at 5:00 AM, Chris Tapp <opensource@keylevel.com> wrote:
>>>>> On 27 Nov 2014, at 07:09, Chan Kit Yu <yuchankit@gmail.com> wrote:
>>>>>
>>>>>> Hi all,
>>>>>>
>>>>>> I'm not sure if emailing this is the most appropriate way and I
>>>>>> apologize in advance if that's not.
>>>>>>
>>>>>> I have some scripts that require /usr/local to exist in Yocto and
>>>>>> therefore I need to a recipe to create /usr/local directory. I tried
>>>>>> to accomplish this with a simple recipe but that proved futile.
>>>>>>
>>>>>> Although bitbaking that particular recipe was fine, trying to include
>>>>>> that package in local.conf resulted errors and those errors are
>>>>>> gibberish (it listed all the packages inside the image that I was
>>>>>> trying to comple) . Here's my simple stupid recipe:
>>>>>>
>>>>>> SUMMARY= "...."
>>>>>> LICENSE = "something...."
>>>>>> ...
>>>>>> ...
>>>>>> INSANE_SKIP_${PN} = "installed-vs-shipped"
>>>>>>
>>>>>> do_install(){
>>>>>>     mkdir -p ${D}/usr/local
>>>>>> }
>>>>> You need to use 'install' rather than mkdir
>>>>>
>>>>>
>>>>>> Is there a better way (or preferably the canonical way) to do this?
>>>>> Yes, there are some definitions you can use. In your case it would be:
>>>>>
>>>>>    # Install the 'local' directory to make sure it exists
>>>>>    install -d ${D}${prefix}/local
>>>>>
>>>>>    # Install a file to this location
>>>>>    install -f ${WORKDIR}/myfile ${D}${prefix}/local
>>>>>
>>>>> The available definitions are shown at the top of meta/conf/bitbake.conf in your Poky installation.
>>>>>
>>>>> --
>>>>>
>>>>> Chris Tapp
>>>>> opensource@keylevel.com
>>>>> www.keylevel.com
>>>>>
>>>>> ----
>>>>> You can tell you're getting older when your car insurance gets real cheap!
>>>>>
>> --
>>
>> Chris Tapp
>> opensource@keylevel.com
>> www.keylevel.com
>>
>> ----
>> You can tell you're getting older when your car insurance gets real cheap!
>>
>>
>>


--------------050908030706000905000900
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Please add <br>
        FILES_PN = "${prefix}/local/*"  line in your recipe.<br>
    <br>
    Thanks,<br>
    yukatharsani J.<br>
    <br>
    <div class="moz-cite-prefix">On 28-11-2014 14:50, Chan Kit Yu wrote:<br>
    </div>
    <blockquote
cite="mid:CANusJLPQk9_0Bo-xyj9AySdrqgSWGAvyP5Eu-U_F2H1iRJdLrA@mail.gmail.com"
      type="cite">
      <pre wrap="">Not sure if you wanna read through the log file. I was initially
dumbfounded but reading through the log I think I found the issue.
Here's the main error (I think) that could have caused the failure.
(my package name is "folder"):

ERROR: folder not found in the base feeds (valleyisland_64
corei7-64-intel-common corei7-64 core2-64 x86_64 noarch any all).

I also attached the error log so feel free to parse it if you feel like it.

Thanks,
Chan Kit


On Fri, Nov 28, 2014 at 4:40 PM, Chris Tapp <a class="moz-txt-link-rfc2396E" href="mailto:opensource@keylevel.com">&lt;opensource@keylevel.com&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">
On 28 Nov 2014, at 01:55, Chan Kit Yu <a class="moz-txt-link-rfc2396E" href="mailto:yuchankit@gmail.com">&lt;yuchankit@gmail.com&gt;</a> wrote:

</pre>
        <blockquote type="cite">
          <pre wrap="">I would also like to add that bitbaking that recipe alone was fine but
bitbaking my image to include that package failed.
</pre>
        </blockquote>
        <pre wrap="">
I'm not sure what's going on - can you post the error message (or at least the relevant part)?

</pre>
        <blockquote type="cite">
          <pre wrap="">On Fri, Nov 28, 2014 at 9:43 AM, Chan Kit Yu <a class="moz-txt-link-rfc2396E" href="mailto:yuchankit@gmail.com">&lt;yuchankit@gmail.com&gt;</a> wrote:
</pre>
          <blockquote type="cite">
            <pre wrap="">Hi Chris,

Thank you very much :-)
But it was no good. I still get the same error even with the "install" use.

Here I attach the full recipe just in case I did wrong somewhere:

SUMMARY = "Create /usr/local"
SECTION = "meta-networking"
LICENSE = "MIT"
LIC_FILES_CHKSUM =
<a class="moz-txt-link-rfc2396E" href="file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302">"file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"</a>
#INSANE_SKIP_${PN} = "installed-vs-shipped"

do_install(){
       install -d  ${D}${prefix}/local/
}

Chan Kit



On Fri, Nov 28, 2014 at 5:00 AM, Chris Tapp <a class="moz-txt-link-rfc2396E" href="mailto:opensource@keylevel.com">&lt;opensource@keylevel.com&gt;</a> wrote:
</pre>
            <blockquote type="cite">
              <pre wrap="">
On 27 Nov 2014, at 07:09, Chan Kit Yu <a class="moz-txt-link-rfc2396E" href="mailto:yuchankit@gmail.com">&lt;yuchankit@gmail.com&gt;</a> wrote:

</pre>
              <blockquote type="cite">
                <pre wrap="">Hi all,

I'm not sure if emailing this is the most appropriate way and I
apologize in advance if that's not.

I have some scripts that require /usr/local to exist in Yocto and
therefore I need to a recipe to create /usr/local directory. I tried
to accomplish this with a simple recipe but that proved futile.

Although bitbaking that particular recipe was fine, trying to include
that package in local.conf resulted errors and those errors are
gibberish (it listed all the packages inside the image that I was
trying to comple) . Here's my simple stupid recipe:

SUMMARY= "...."
LICENSE = "something...."
...
...
INSANE_SKIP_${PN} = "installed-vs-shipped"

do_install(){
   mkdir -p ${D}/usr/local
}
</pre>
              </blockquote>
              <pre wrap="">
You need to use 'install' rather than mkdir


</pre>
              <blockquote type="cite">
                <pre wrap="">Is there a better way (or preferably the canonical way) to do this?
</pre>
              </blockquote>
              <pre wrap="">
Yes, there are some definitions you can use. In your case it would be:

  # Install the 'local' directory to make sure it exists
  install -d ${D}${prefix}/local

  # Install a file to this location
  install -f ${WORKDIR}/myfile ${D}${prefix}/local

The available definitions are shown at the top of meta/conf/bitbake.conf in your Poky installation.

--

Chris Tapp
<a class="moz-txt-link-abbreviated" href="mailto:opensource@keylevel.com">opensource@keylevel.com</a>
<a class="moz-txt-link-abbreviated" href="http://www.keylevel.com">www.keylevel.com</a>

----
You can tell you're getting older when your car insurance gets real cheap!

</pre>
            </blockquote>
          </blockquote>
        </blockquote>
        <pre wrap="">
--

Chris Tapp
<a class="moz-txt-link-abbreviated" href="mailto:opensource@keylevel.com">opensource@keylevel.com</a>
<a class="moz-txt-link-abbreviated" href="http://www.keylevel.com">www.keylevel.com</a>

----
You can tell you're getting older when your car insurance gets real cheap!

</pre>
        <br>
        <fieldset class="mimeAttachmentHeader"></fieldset>
        <br>
      </blockquote>
    </blockquote>
    <br>
  </body>
</html>

--------------050908030706000905000900--
