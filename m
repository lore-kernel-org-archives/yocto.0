Return-Path: <mateusz.orzol@3cityelectronics.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA2E0E010E7; Thu, 22 Dec 2016 00:20:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.4 required=5.0 tests=BAYES_00,FSL_HELO_BARE_IP_2,
	HTML_MESSAGE,RCVD_NUMERIC_HELO autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.2 RCVD_NUMERIC_HELO Received: contains an IP address
	used for HELO
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.1 FSL_HELO_BARE_IP_2 FSL_HELO_BARE_IP_2
Received: from cloudserver125993.home.net.pl (cloudserver125993.home.net.pl
	[188.128.188.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25A0EE010DE
	for <yocto@yoctoproject.org>; Thu, 22 Dec 2016 00:20:25 -0800 (PST)
Received: from 31.179.144.210 (31.179.144.210) (HELO [192.168.11.228])
	by 3cte.home.pl (188.128.188.9) with SMTP (IdeaSmtpServer 0.81.1)
	id d0db9f4e0df4e613; Thu, 22 Dec 2016 09:20:26 +0100
To: Khem Raj <raj.khem@gmail.com>
References: <396d7721-c317-789c-6a66-938280ccb006@3cityelectronics.com>
	<CAMKF1so+ZwuF=ecyhkaXOzJDB1y08kednf4Bi8KCtZUfTdqKEA@mail.gmail.com>
	<329f43bf-dcc3-ddea-fb40-8b1bb9f536bd@3cityelectronics.com>
	<2f7ef8d8-1731-d3d6-ad12-cc90fb398d6d@3cityelectronics.com>
	<CAMKF1spFedNKS=jWSa7=EK49gxVJ5Z1fXGXgmpb10N8714_f4g@mail.gmail.com>
	<f8e70915-43bf-5edb-4163-70ba032c6171@3cityelectronics.com>
From: =?UTF-8?Q?Mateusz_Orzo=c5=82?= <mateusz.orzol@3cityelectronics.com>
Message-ID: <760342d3-506d-f52a-0417-9960183360f8@3cityelectronics.com>
Date: Thu, 22 Dec 2016 09:20:22 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <f8e70915-43bf-5edb-4163-70ba032c6171@3cityelectronics.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [bitbake] Failure to compile UltraJson, LMDB and Netifaces python modules recipes for Krogoth.
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
X-List-Received-Date: Thu, 22 Dec 2016 08:20:43 -0000
Content-Type: multipart/alternative;
	boundary="------------78CBD75863DBA27CC5351B2A"

--------------78CBD75863DBA27CC5351B2A
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit



W dniu 2016-12-22 o 09:16, Mateusz Orzoł pisze:
>
>
>
> W dniu 2016-12-21 o 18:21, Khem Raj pisze:
>> On Tue, Dec 20, 2016 at 10:54 PM, Mateusz Orzoł
>> <mateusz.orzol@3cityelectronics.com> wrote:
>>> W dniu 2016-12-20 o 10:46, Mateusz Orzoł pisze:
>>>
>>>
>>>
>>> W dniu 2016-12-20 o 00:43, Khem Raj pisze:
>>>
>>>
>>>
>>> On Mon, Dec 19, 2016 at 1:46 PM, Mateusz Orzoł
>>> <mateusz.orzol@3cityelectronics.com> wrote:
>>>> Hi everyone,
>>>>
>>>> I am migrating my old Yocto image from kernel 3.8 to 4.1 on the Intel
>>>> Quark based platform. After dealing with some SPI driver issues now I've
>>>> encountered some strange bitbake behaviour. My web application requires
>>>> UltraJson , LMDB and Netifaces modules. After running bitbake  I am getting
>>>> a lot of undefined reference errors. In all three cases pretty similar.
>>>> Exemplary log for python-ujson is here: http://pastebin.com/8ms9PgnY . It
>>>> seems like the python environment wasn't linked properly but many other
>>>> python recipes have no problem with compiling.
>>>>
>>>> The python-ujson recipe comes from here
>>>> https://layers.openembedded.org/layerindex/recipe/49510/. In  previous
>>>> distribution with kernel 3.8 it was working without any problem.
>>>>
>>>> Have you got any idea what could be wrong or what should I check first?
>>> The error seems to have nothing to do with kernel version. Are you upgrading
>>> the whole of yocto framework from one release to another ? and if yes from
>>> which version to which new version.
>>>
>>>
>>>
>>> I am upgrading from 1.4.2 Dylan version to Krogoth. Firstly I've prepared
>>> clean Krogoth image which worked fine. Now I am adding necessary recipes and
>>> packages one by one and currently the only problem I've encountered is the
>>> mentioned one.
>>>
>>> Hi,
>>> W have found found quick fix for this.  The errors disappeared when all the
>>> build flags were cleared in mentioned python modules recipes. It means
>>> TARGET_CFLAGS = "" LDFLAGS = "" CFLAGS = "" in module .bb file. It was
>>> checked on the device that modules are visible in python and they work. I
>>> don't know why this helped and also what was causing the issue. Do you have
>>> any clues what was wrong and how to fix it in proper way?
>> Can you post the exact change ? perhaps there is issue in Makefile
>> environment that
>> bitbake is handing off to the makefiles of this component. There
>> change in this area
>> in OE recently.
> Hi,
> the exact change in the python-ujson_1.35.bb  file:
> http://pastebin.com/L2JQvQD0.  The change in other python modules
> bitbake files is identical.
Sorry the link is broken because of the dot http://pastebin.com/L2JQvQD0
>>>> Thank you for your help in advance,
>>>>
>>>> Mateusz
>>>>
>>>>
>>>> --
>>>>
>>>>
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>
>>> --
>>>
>>>
>>>
>>> --
>>>
>
> -- 
>  

-- 
 

--------------78CBD75863DBA27CC5351B2A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">W dniu 2016-12-22 o 09:16, Mateusz
      Orzoł pisze:<br>
    </div>
    <blockquote
      cite="mid:f8e70915-43bf-5edb-4163-70ba032c6171@3cityelectronics.com"
      type="cite">
      <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
      <p><br>
      </p>
      <br>
      <div class="moz-cite-prefix">W dniu 2016-12-21 o 18:21, Khem Raj
        pisze:<br>
      </div>
      <blockquote
cite="mid:CAMKF1spFedNKS=jWSa7=EK49gxVJ5Z1fXGXgmpb10N8714_f4g@mail.gmail.com"
        type="cite">
        <pre wrap="">On Tue, Dec 20, 2016 at 10:54 PM, Mateusz Orzoł
<a moz-do-not-send="true" class="moz-txt-link-rfc2396E" href="mailto:mateusz.orzol@3cityelectronics.com">&lt;mateusz.orzol@3cityelectronics.com&gt;</a> wrote:
</pre>
        <blockquote type="cite">
          <pre wrap="">
W dniu 2016-12-20 o 10:46, Mateusz Orzoł pisze:



W dniu 2016-12-20 o 00:43, Khem Raj pisze:



On Mon, Dec 19, 2016 at 1:46 PM, Mateusz Orzoł
<a moz-do-not-send="true" class="moz-txt-link-rfc2396E" href="mailto:mateusz.orzol@3cityelectronics.com">&lt;mateusz.orzol@3cityelectronics.com&gt;</a> wrote:
</pre>
          <blockquote type="cite">
            <pre wrap="">Hi everyone,

I am migrating my old Yocto image from kernel 3.8 to 4.1 on the Intel
Quark based platform. After dealing with some SPI driver issues now I've
encountered some strange bitbake behaviour. My web application requires
UltraJson , LMDB and Netifaces modules. After running bitbake  I am getting
a lot of undefined reference errors. In all three cases pretty similar.
Exemplary log for python-ujson is here: <a moz-do-not-send="true" class="moz-txt-link-freetext" href="http://pastebin.com/8ms9PgnY">http://pastebin.com/8ms9PgnY</a> . It
seems like the python environment wasn't linked properly but many other
python recipes have no problem with compiling.

The python-ujson recipe comes from here
<a moz-do-not-send="true" class="moz-txt-link-freetext" href="https://layers.openembedded.org/layerindex/recipe/49510/">https://layers.openembedded.org/layerindex/recipe/49510/</a>. In  previous
distribution with kernel 3.8 it was working without any problem.

Have you got any idea what could be wrong or what should I check first?
</pre>
          </blockquote>
          <pre wrap="">
The error seems to have nothing to do with kernel version. Are you upgrading
the whole of yocto framework from one release to another ? and if yes from
which version to which new version.



I am upgrading from 1.4.2 Dylan version to Krogoth. Firstly I've prepared
clean Krogoth image which worked fine. Now I am adding necessary recipes and
packages one by one and currently the only problem I've encountered is the
mentioned one.

Hi,
W have found found quick fix for this.  The errors disappeared when all the
build flags were cleared in mentioned python modules recipes. It means
TARGET_CFLAGS = "" LDFLAGS = "" CFLAGS = "" in module .bb file. It was
checked on the device that modules are visible in python and they work. I
don't know why this helped and also what was causing the issue. Do you have
any clues what was wrong and how to fix it in proper way?
</pre>
        </blockquote>
        <pre wrap="">Can you post the exact change ? perhaps there is issue in Makefile
environment that
bitbake is handing off to the makefiles of this component. There
change in this area
in OE recently.</pre>
      </blockquote>
      Hi,<br>
      the exact change in the python-ujson_1.35.bb  file: <a
        moz-do-not-send="true" class="moz-txt-link-freetext"
        href="http://pastebin.com/L2JQvQD0">http://pastebin.com/L2JQvQD0</a>. 
      The change in other python modules bitbake files is identical. <br>
    </blockquote>
    Sorry the link is broken because of the dot <a
      moz-do-not-send="true" class="moz-txt-link-freetext"
      href="http://pastebin.com/L2JQvQD0">http://pastebin.com/L2JQvQD0</a>
    <blockquote
      cite="mid:f8e70915-43bf-5edb-4163-70ba032c6171@3cityelectronics.com"
      type="cite">
      <blockquote
cite="mid:CAMKF1spFedNKS=jWSa7=EK49gxVJ5Z1fXGXgmpb10N8714_f4g@mail.gmail.com"
        type="cite">
        <pre wrap="">
</pre>
        <blockquote type="cite">
          <blockquote type="cite">
            <pre wrap="">Thank you for your help in advance,

Mateusz


--


--
_______________________________________________
yocto mailing list
<a moz-do-not-send="true" class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a moz-do-not-send="true" class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>

</pre>
          </blockquote>
          <pre wrap="">
--



--

</pre>
        </blockquote>
      </blockquote>
      <br>
      <div class="moz-signature">-- <br>
        <meta http-equiv="content-type" content="text/html;
          charset=utf-8">
        <title></title>
        <map name="mapa1">
          <area shape="rect" coords="36,110,173,119"
            href="http://www.3CityElectronics.com/">
          <area shape="circle" coords="45,145,10"
            href="https://www.facebook.com/3CTE.POLAND/?fref=nf">
          <area shape="circle" coords="72,145,10"
href="https://www.linkedin.com/company/3city-electronics-sp-z-o-o-?trk=company_logo">
          <area shape="rect" coords="435,34,613,52"
            href="http://www.3CityElectronics.com/">
           </map>
      </div>
    </blockquote>
    <br>
    <div class="moz-signature">-- <br>
      <meta http-equiv="content-type" content="text/html; charset=utf-8">
      <title></title>
      <map name="mapa1">
        <area shape="rect" coords="36,110,173,119"
          href="http://www.3CityElectronics.com/">
        <area shape="circle" coords="45,145,10"
          href="https://www.facebook.com/3CTE.POLAND/?fref=nf">
        <area shape="circle" coords="72,145,10"
href="https://www.linkedin.com/company/3city-electronics-sp-z-o-o-?trk=company_logo">
        <area shape="rect" coords="435,34,613,52"
          href="http://www.3CityElectronics.com/">
         </map>
    </div>
  </body>
</html>

--------------78CBD75863DBA27CC5351B2A--
