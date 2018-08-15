Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1D1FE00566; Tue, 14 Aug 2018 22:48:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 599DFE003D7
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2018 22:48:09 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w7F5m62E024470
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 14 Aug 2018 22:48:07 -0700 (PDT)
Received: from [128.224.162.137] (128.224.162.137) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.399.0;
	Tue, 14 Aug 2018 22:48:06 -0700
To: Joe MacDonald <Joe_MacDonald@mentor.com>, Mark Hatle
	<mark.hatle@windriver.com>, <flihp@twobit.us>
References: <1523758104-25257-1-git-send-email-akuster@mvista.com>
	<43b42f5a-57dd-2c82-92cc-ea2d742870b8@gmail.com>
	<9c97d64c-07a4-7499-4a70-611d659d26d4@gmail.com>
	<d7eb0b4a-e511-023c-3872-04b891bd0a4e@windriver.com>
	<fd441792-54e6-e7a8-d6ce-f17f35de76a3@gmail.com>
	<8fe4ffc7-4300-46c1-ae31-aee3861a66d6@windriver.com>
	<20180514160956.njdfc4pycyd3snvl@mentor.com>
From: Yi Zhao <yi.zhao@windriver.com>
Message-ID: <eba96de4-51a4-0098-a5f9-62beec85ff22@windriver.com>
Date: Wed, 15 Aug 2018 13:48:03 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20180514160956.njdfc4pycyd3snvl@mentor.com>
X-Originating-IP: [128.224.162.137]
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH] libselinux: python-importlib is now part of python*-core
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
X-List-Received-Date: Wed, 15 Aug 2018 05:48:12 -0000
Content-Type: multipart/alternative;
	boundary="------------997A5F58B8E5E5CB94C700F7"
Content-Language: en-US

--------------997A5F58B8E5E5CB94C700F7
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit



在 2018年05月15日 00:09, Joe MacDonald 写道:
> [Re: [yocto] [meta-selinux][PATCH] libselinux: python-importlib is now part of python*-core] On 18.05.14 (Mon 10:05) Mark Hatle wrote:
>
>> On 5/11/18 1:19 PM, Rudolf J Streif wrote:
>>> Thank you, Mark. Much appreciated and understood.
>>>
>>> Would you be open to tagging the layer for rocko to the right commit and
>>> applying the patches sent to the mailing list by Armin and Kai to master
>>> so that we have known points to move forward?
>> I'm going to try to sync with Joe later today.  I'll make sure that we
>> branch rocko..  If Joe can't get to the sumo work this week, I'll do
>> my best to get it done.
> Yeah, just keep everyone in the loop on this, Mark and I will
> coordinate, I anticipate having the current meta-selinux queue cleaned
> up this week.  I followed up last week to Armin indicating that I was
> working on this, but as I'm sure anyone building meta-selinux right now
> already knows, things are not happy there and corrective measures are
> kind of involved.
>
> As for longer-term maintenance, meta-selinux and SELinux in general is
> of particular interest to me personally, but much like Mark, I haven't
> has as much time for the layer as it deserves lately, so if anyone wants
> to volunteer to help out with it, by all means, let us know.
Hi Joe, Mark and Philip

I'm interested in this  and want to volunteer to help the meta-selinux 
maintenance.  I have enough time to review and test the patches. There 
are some pending patches from Wenzong which can not be merged into 
master. Currently I'm working on them and will re-send them.

Thanks,
Yi


>
>
> Thanks,
> -J.
>
>> --Mark
>>
>>> Thank you,
>>> Rudi
>>>
>>>
>>> On 05/11/2018 10:45 AM, Mark Hatle wrote:
>>>> On 5/11/18 12:28 PM, Rudolf J Streif wrote:
>>>>> Echoing this: may I ask what the current maintenance status of
>>>>> meta-selinux is. It appears that no updates have been made for more than
>>>>> 9 months. This is of course not to blame anybody but out of concern that
>>>>> the layer is falling behind even more and to find a solution.
>>>> The answer is the current set of people are horribly overworked and busy, so
>>>> day-to-day updates have been 'sparse'.
>>>>
>>>> Usually we update meta-selinux about the time of a release, and thus are due.
>>>>
>>>> The last update of meta-selinux was about the time of the Rocko release, so what
>>>> is in master is definitely current as of Rocko.  (I did the last set of updates
>>>> -- so I know it did work as of Rocko release.)  The master needs to be branched
>>>> as Rocko... master needs to be updated to be Sumo compatible.
>>>>
>>>> My assumption is that once Sumo is formally released (any minute now), we'll
>>>> collection all of the patches and get them into place and spend some time
>>>> cleaning them up...
>>>>
>>>> It looks like Joe is already working through this effort.
>>>>
>>>> (Only speaking for myself,) I don't have time to do day-to-day maintenance of
>>>> meta-selinux any longer -- nor do I have the indepth knowledge to understand
>>>> when not to do something.  I filled this role purely out of necessity since
>>>> nobody else was doing it.
>>>>
>>>> So with that said, if anyone wants to help, we're all open for help here...  I
>>>> doubt there would be any objection to adding or replacing existing maintainers
>>>> and/or giving more people push access.
>>>>
>>>>> In addition to Armin's patches there are two patches submitted by Kai
>>>>> Kang at Windriver:
>>>>>
>>>>> * https://lists.yoctoproject.org/pipermail/yocto/2018-February/039917.html
>>>>> * https://lists.yoctoproject.org/pipermail/yocto/2018-February/039918.html
>>>>>
>>>>> Curiously enough, the second patch has been applied to master but not
>>>>> the first one.
>>>>>
>>>>>
>>>>> There is also an issue with building SELinux with systemd. The layer
>>>>> enables auditing:
>>>>>
>>>>> meta-selinux/classes/enable-audit.bbclass:PACKAGECONFIG[audit] =
>>>>> "--enable-audit,--disable-audit,audit,"
>>>>> meta-selinux/recipes-core/systemd/systemd_%.bbappend:inherit
>>>>> ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'enable-audit', '', d)}
>>>>>
>>>>> Apparently the --enable-audit switch is passed to meson when running the
>>>>> configure task, which meson does not appreciate. I am not that familiar
>>>>> with the audit feature nor with meson, so I currently have no idea on
>>>>> how to fix this the right way.
>>>> audit feature is useful outside of selinux, so my understand was that audit
>>>> itself was moving into core during the sumo time frame (if it hadn't already
>>>> been oved.)
>>>>
>>>> I don't know anything about meson, so I can't speak to that...
>>>>
>>>>> Further, refpolicy_git does not build anymore as the YP specific patches
>>>>> do not apply anymore since upstream changed.
>>>> The refpolicy is and has always been crap.  I've been talking to a few people on
>>>> IRC about working to replace the refpolicy with a policy that can be generated
>>>> dynamically based on the contents of the recipes.  I don't know if that is
>>>> really going to happen, but I hate the way it's currently implemented.
>>>>
>>>> One of the key issues about the refpolicy is that you need to be an expert at
>>>> this (which I never claimed to be) in order to make any reasonable decision --
>>>> add to that any specific policy needs to userstand overall system design, and I
>>>> wouldn't trust any of the refpolicy items as they stand in meta-selinux.
>>>>
>>>> --Mark
>>>>
>>>>> Thanks,
>>>>> Rudi
>>>>>
>>>>>
>>>>>
>>>>> On 05/07/2018 10:20 AM, akuster808 wrote:
>>>>>> On 04/14/2018 07:08 PM, Armin Kuster wrote:
>>>>>>> Missing or unbuildable dependency chain was: ['meta-world-pkgdata', 'restorecond', 'libselinux', 'python-importlib']
>>>>>>>
>>>>>>> Signed-off-by: Armin Kuster <akuster@mvista.com>
>>>>>> ping
>>>>>>> ---
>>>>>>>   recipes-security/selinux/libselinux.inc | 2 +-
>>>>>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>>>>>
>>>>>>> diff --git a/recipes-security/selinux/libselinux.inc b/recipes-security/selinux/libselinux.inc
>>>>>>> index bd5ce8d..51d0875 100644
>>>>>>> --- a/recipes-security/selinux/libselinux.inc
>>>>>>> +++ b/recipes-security/selinux/libselinux.inc
>>>>>>> @@ -8,7 +8,7 @@ LICENSE = "PD"
>>>>>>>   inherit lib_package pythonnative
>>>>>>>   
>>>>>>>   DEPENDS += "libsepol python libpcre swig-native"
>>>>>>> -RDEPENDS_${PN}-python += "python-importlib"
>>>>>>> +RDEPENDS_${PN}-python += "python-core"
>>>>>>>   
>>>>>>>   PACKAGES += "${PN}-python"
>>>>>>>   FILES_${PN}-python = "${libdir}/python${PYTHON_BASEVERSION}/site-packages/*"
>>>>>
>>
>
>
>
>
>


--------------997A5F58B8E5E5CB94C700F7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">在 2018年05月15日 00:09, Joe MacDonald 写道:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20180514160956.njdfc4pycyd3snvl@mentor.com">
      <pre wrap="">[Re: [yocto] [meta-selinux][PATCH] libselinux: python-importlib is now part of python*-core] On 18.05.14 (Mon 10:05) Mark Hatle wrote:

</pre>
      <blockquote type="cite">
        <pre wrap="">On 5/11/18 1:19 PM, Rudolf J Streif wrote:
</pre>
        <blockquote type="cite">
          <pre wrap="">Thank you, Mark. Much appreciated and understood.

Would you be open to tagging the layer for rocko to the right commit and
applying the patches sent to the mailing list by Armin and Kai to master
so that we have known points to move forward?
</pre>
        </blockquote>
        <pre wrap="">
I'm going to try to sync with Joe later today.  I'll make sure that we
branch rocko..  If Joe can't get to the sumo work this week, I'll do
my best to get it done.
</pre>
      </blockquote>
      <pre wrap="">
Yeah, just keep everyone in the loop on this, Mark and I will
coordinate, I anticipate having the current meta-selinux queue cleaned
up this week.  I followed up last week to Armin indicating that I was
working on this, but as I'm sure anyone building meta-selinux right now
already knows, things are not happy there and corrective measures are
kind of involved.

As for longer-term maintenance, meta-selinux and SELinux in general is
of particular interest to me personally, but much like Mark, I haven't
has as much time for the layer as it deserves lately, so if anyone wants
to volunteer to help out with it, by all means, let us know.</pre>
    </blockquote>
    Hi Joe, Mark and Philip<br>
    <br>
    I'm interested in this  and want to volunteer to help the
    meta-selinux maintenance.  I have enough time to review and test the
    patches. There are some pending patches from Wenzong which can not
    be merged into master. Currently I'm working on them and will
    re-send them.<br>
    <br>
    Thanks,<br>
    Yi<br>
    <br>
    <br>
    <blockquote type="cite"
      cite="mid:20180514160956.njdfc4pycyd3snvl@mentor.com">
      <pre wrap="">


Thanks,
-J.

</pre>
      <blockquote type="cite">
        <pre wrap="">
--Mark

</pre>
        <blockquote type="cite">
          <pre wrap="">Thank you,
Rudi


On 05/11/2018 10:45 AM, Mark Hatle wrote:
</pre>
          <blockquote type="cite">
            <pre wrap="">On 5/11/18 12:28 PM, Rudolf J Streif wrote:
</pre>
            <blockquote type="cite">
              <pre wrap="">Echoing this: may I ask what the current maintenance status of
meta-selinux is. It appears that no updates have been made for more than
9 months. This is of course not to blame anybody but out of concern that
the layer is falling behind even more and to find a solution.
</pre>
            </blockquote>
            <pre wrap="">The answer is the current set of people are horribly overworked and busy, so
day-to-day updates have been 'sparse'.

Usually we update meta-selinux about the time of a release, and thus are due.

The last update of meta-selinux was about the time of the Rocko release, so what
is in master is definitely current as of Rocko.  (I did the last set of updates
-- so I know it did work as of Rocko release.)  The master needs to be branched
as Rocko... master needs to be updated to be Sumo compatible.

My assumption is that once Sumo is formally released (any minute now), we'll
collection all of the patches and get them into place and spend some time
cleaning them up...

It looks like Joe is already working through this effort.

(Only speaking for myself,) I don't have time to do day-to-day maintenance of
meta-selinux any longer -- nor do I have the indepth knowledge to understand
when not to do something.  I filled this role purely out of necessity since
nobody else was doing it.

So with that said, if anyone wants to help, we're all open for help here...  I
doubt there would be any objection to adding or replacing existing maintainers
and/or giving more people push access.

</pre>
            <blockquote type="cite">
              <pre wrap="">In addition to Armin's patches there are two patches submitted by Kai
Kang at Windriver:

* <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/pipermail/yocto/2018-February/039917.html">https://lists.yoctoproject.org/pipermail/yocto/2018-February/039917.html</a>
* <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/pipermail/yocto/2018-February/039918.html">https://lists.yoctoproject.org/pipermail/yocto/2018-February/039918.html</a>

Curiously enough, the second patch has been applied to master but not
the first one.


There is also an issue with building SELinux with systemd. The layer
enables auditing:

meta-selinux/classes/enable-audit.bbclass:PACKAGECONFIG[audit] =
"--enable-audit,--disable-audit,audit,"
meta-selinux/recipes-core/systemd/systemd_%.bbappend:inherit
${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'enable-audit', '', d)}

Apparently the --enable-audit switch is passed to meson when running the
configure task, which meson does not appreciate. I am not that familiar
with the audit feature nor with meson, so I currently have no idea on
how to fix this the right way.
</pre>
            </blockquote>
            <pre wrap="">audit feature is useful outside of selinux, so my understand was that audit
itself was moving into core during the sumo time frame (if it hadn't already
been oved.)

I don't know anything about meson, so I can't speak to that...

</pre>
            <blockquote type="cite">
              <pre wrap="">Further, refpolicy_git does not build anymore as the YP specific patches
do not apply anymore since upstream changed.
</pre>
            </blockquote>
            <pre wrap="">The refpolicy is and has always been crap.  I've been talking to a few people on
IRC about working to replace the refpolicy with a policy that can be generated
dynamically based on the contents of the recipes.  I don't know if that is
really going to happen, but I hate the way it's currently implemented.

One of the key issues about the refpolicy is that you need to be an expert at
this (which I never claimed to be) in order to make any reasonable decision --
add to that any specific policy needs to userstand overall system design, and I
wouldn't trust any of the refpolicy items as they stand in meta-selinux.

--Mark

</pre>
            <blockquote type="cite">
              <pre wrap="">Thanks,
Rudi



On 05/07/2018 10:20 AM, akuster808 wrote:
</pre>
              <blockquote type="cite">
                <pre wrap="">On 04/14/2018 07:08 PM, Armin Kuster wrote:
</pre>
                <blockquote type="cite">
                  <pre wrap="">Missing or unbuildable dependency chain was: ['meta-world-pkgdata', 'restorecond', 'libselinux', 'python-importlib']

Signed-off-by: Armin Kuster <a class="moz-txt-link-rfc2396E" href="mailto:akuster@mvista.com">&lt;akuster@mvista.com&gt;</a>
</pre>
                </blockquote>
                <pre wrap="">ping
</pre>
                <blockquote type="cite">
                  <pre wrap="">---
 recipes-security/selinux/libselinux.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/selinux/libselinux.inc b/recipes-security/selinux/libselinux.inc
index bd5ce8d..51d0875 100644
--- a/recipes-security/selinux/libselinux.inc
+++ b/recipes-security/selinux/libselinux.inc
@@ -8,7 +8,7 @@ LICENSE = "PD"
 inherit lib_package pythonnative
 
 DEPENDS += "libsepol python libpcre swig-native"
-RDEPENDS_${PN}-python += "python-importlib"
+RDEPENDS_${PN}-python += "python-core"
 
 PACKAGES += "${PN}-python"
 FILES_${PN}-python = "${libdir}/python${PYTHON_BASEVERSION}/site-packages/*"
</pre>
                </blockquote>
              </blockquote>
              <pre wrap="">

</pre>
            </blockquote>
          </blockquote>
          <pre wrap="">
</pre>
        </blockquote>
        <pre wrap="">

</pre>
      </blockquote>
      <pre wrap="">



</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------997A5F58B8E5E5CB94C700F7--
