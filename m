Return-Path: <mateusz.orzol@3cityelectronics.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD32BE01065; Tue, 20 Dec 2016 22:54:48 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAC98E00D00
	for <yocto@yoctoproject.org>; Tue, 20 Dec 2016 22:54:45 -0800 (PST)
Received: from 31.179.144.210 (31.179.144.210) (HELO [192.168.11.228])
	by 3cte.home.pl (188.128.188.9) with SMTP (IdeaSmtpServer 0.81.1)
	id e3c125cb5d8491b2; Wed, 21 Dec 2016 07:54:44 +0100
To: Khem Raj <raj.khem@gmail.com>
References: <396d7721-c317-789c-6a66-938280ccb006@3cityelectronics.com>
	<CAMKF1so+ZwuF=ecyhkaXOzJDB1y08kednf4Bi8KCtZUfTdqKEA@mail.gmail.com>
	<329f43bf-dcc3-ddea-fb40-8b1bb9f536bd@3cityelectronics.com>
From: =?UTF-8?Q?Mateusz_Orzo=c5=82?= <mateusz.orzol@3cityelectronics.com>
Message-ID: <2f7ef8d8-1731-d3d6-ad12-cc90fb398d6d@3cityelectronics.com>
Date: Wed, 21 Dec 2016 07:54:41 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <329f43bf-dcc3-ddea-fb40-8b1bb9f536bd@3cityelectronics.com>
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
X-List-Received-Date: Wed, 21 Dec 2016 06:54:49 -0000
Content-Type: multipart/alternative;
	boundary="------------DB09CAFCA94B8DEDFC9ADCEB"

--------------DB09CAFCA94B8DEDFC9ADCEB
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



W dniu 2016-12-20 o 10:46, Mateusz Orzo=C5=82 pisze:
>
>
>
> W dniu 2016-12-20 o 00:43, Khem Raj pisze:
>>
>>
>> On Mon, Dec 19, 2016 at 1:46 PM, Mateusz Orzo=C5=82
>> <mateusz.orzol@3cityelectronics.com
>> <mailto:mateusz.orzol@3cityelectronics.com>> wrote:
>>
>>     Hi everyone,
>>
>>     I am migrating my old Yocto image from kernel 3.8 to 4.1 on the
>>     Intel Quark based platform. After dealing with some SPI driver
>>     issues now I've encountered some strange bitbake behaviour. My
>>     web application requires UltraJson , LMDB and Netifaces modules.
>>     After running bitbake  I am getting a lot of undefined reference
>>     errors. In all three cases pretty similar. Exemplary log for
>>     python-ujson is here: http://pastebin.com/8ms9PgnY . It seems
>>     like the python environment wasn't linked properly but many other
>>     python recipes have no problem with compiling.
>>
>>     The python-ujson recipe comes from here
>>     https://layers.openembedded.org/layerindex/recipe/49510/
>>     <https://layers.openembedded.org/layerindex/recipe/49510/>. In=20
>>     previous distribution with kernel 3.8 it was working without any
>>     problem.
>>
>>     Have you got any idea what could be wrong or what should I check
>>     first?
>>
>>
>> =E2=80=8BThe error seems to have nothing to do with kernel version. Ar=
e you
>> upgrading the whole of yocto framework from one release to another ?
>> and if yes from which version to which new version.=E2=80=8B
>>
>> =20
> I am upgrading from 1.4.2 Dylan version to Krogoth. Firstly I've
> prepared clean Krogoth image which worked fine. Now I am adding
> necessary recipes and packages one by one and currently the only
> problem I've encountered is the mentioned one.
Hi,
W have found found quick fix for this.  The errors disappeared when all
the build flags were cleared in mentioned python modules recipes. It
means TARGET_CFLAGS =3D "" LDFLAGS =3D "" CFLAGS =3D "" in module .bb fil=
e. It
was checked on the device that modules are visible in python and they
work. I don't know why this helped and also what was causing the issue.
Do you have any clues what was wrong and how to fix it in proper way?
>>
>>     Thank you for your help in advance,
>>
>>     Mateusz
>>
>>
>>     --=20
>>     =20
>>
>>     --
>>     _______________________________________________
>>     yocto mailing list
>>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>     https://lists.yoctoproject.org/listinfo/yocto
>>     <https://lists.yoctoproject.org/listinfo/yocto>
>>
>>
>
> --=20
> =20

--=20
=20

--------------DB09CAFCA94B8DEDFC9ADCEB
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
    <div class="moz-cite-prefix">W dniu 2016-12-20 o 10:46, Mateusz
      Orzoł pisze:<br>
    </div>
    <blockquote
      cite="mid:329f43bf-dcc3-ddea-fb40-8b1bb9f536bd@3cityelectronics.com"
      type="cite">
      <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
      <p><br>
      </p>
      <br>
      <div class="moz-cite-prefix">W dniu 2016-12-20 o 00:43, Khem Raj
        pisze:<br>
      </div>
      <blockquote
cite="mid:CAMKF1so+ZwuF=ecyhkaXOzJDB1y08kednf4Bi8KCtZUfTdqKEA@mail.gmail.com"
        type="cite">
        <div dir="ltr">
          <div class="gmail_default"
            style="font-family:monospace,monospace"><br>
          </div>
          <div class="gmail_extra"><br>
            <div class="gmail_quote">On Mon, Dec 19, 2016 at 1:46 PM,
              Mateusz Orzoł <span dir="ltr">&lt;<a
                  moz-do-not-send="true"
                  href="mailto:mateusz.orzol@3cityelectronics.com"
                  target="_blank">mateusz.orzol@3cityelectronics.com</a>&gt;</span>
              wrote:<br>
              <blockquote class="gmail_quote" style="margin:0 0 0
                .8ex;border-left:1px #ccc solid;padding-left:1ex">
                <div bgcolor="#FFFFFF" text="#000000">
                  <p>Hi everyone,</p>
                  <p>I am migrating my old Yocto image from kernel 3.8
                    to 4.1 on the Intel Quark based platform. After
                    dealing with some SPI driver issues now I've
                    encountered some strange bitbake behaviour. My web
                    application requires UltraJson , LMDB and Netifaces
                    modules. After running bitbake  I am getting a lot
                    of undefined reference errors. In all three cases
                    pretty similar. Exemplary log for python-ujson is
                    here: <a moz-do-not-send="true"
                      class="m_5374100980488576139moz-txt-link-freetext"
                      href="http://pastebin.com/8ms9PgnY"
                      target="_blank">http://pastebin.com/8ms9PgnY</a> .
                    It seems like the python environment wasn't linked
                    properly but many other python recipes have no
                    problem with compiling.<br>
                  </p>
                  <p>The python-ujson recipe comes from here <a
                      moz-do-not-send="true"
                      class="m_5374100980488576139moz-txt-link-freetext"
href="https://layers.openembedded.org/layerindex/recipe/49510/"
                      target="_blank">https://layers.openembedded.<wbr>org/layerindex/recipe/49510/</a>.
                    In  previous distribution with kernel 3.8 it was
                    working without any problem. <br>
                  </p>
                  <p>Have you got any idea what could be wrong or what
                    should I check first?</p>
                </div>
              </blockquote>
              <div><br>
              </div>
              <div>
                <div class="gmail_default"
                  style="font-family:monospace,monospace">​The error
                  seems to have nothing to do with kernel version. Are
                  you upgrading the whole of yocto framework from one
                  release to another ? and if yes from which version to
                  which new version.​</div>
                <br>
              </div>
              <div> </div>
            </div>
          </div>
        </div>
      </blockquote>
      I am upgrading from 1.4.2 Dylan version to Krogoth. Firstly I've
      prepared clean Krogoth image which worked fine. Now I am adding
      necessary recipes and packages one by one and currently the only
      problem I've encountered is the mentioned one.<br>
    </blockquote>
    Hi,<br>
    W have found found quick fix for this.  The errors disappeared when
    all the build flags were cleared in mentioned python modules
    recipes. It means TARGET_CFLAGS = "" LDFLAGS = "" CFLAGS = "" in
    module .bb file. It was checked on the device that modules are
    visible in python and they work. I don't know why this helped and
    also what was causing the issue. Do you have any clues what was
    wrong and how to fix it in proper way?<br>
    <blockquote
      cite="mid:329f43bf-dcc3-ddea-fb40-8b1bb9f536bd@3cityelectronics.com"
      type="cite">
      <blockquote
cite="mid:CAMKF1so+ZwuF=ecyhkaXOzJDB1y08kednf4Bi8KCtZUfTdqKEA@mail.gmail.com"
        type="cite">
        <div dir="ltr">
          <div class="gmail_extra">
            <div class="gmail_quote">
              <blockquote class="gmail_quote" style="margin:0 0 0
                .8ex;border-left:1px #ccc solid;padding-left:1ex">
                <div bgcolor="#FFFFFF" text="#000000">
                  <p>Thank you for your help in advance,</p>
                  <p>Mateusz<span class="HOEnZb"><font color="#888888"><br>
                      </font></span></p>
                  <span class="HOEnZb"><font color="#888888">
                      <p><br>
                      </p>
                      <div class="m_5374100980488576139moz-signature">--
                        <br>
                        <map name="m_5374100980488576139_mapa1">
                          <area shape="rect" coords="36,110,173,119"
                            href="http://www.3CityElectronics.com/"
                            target="_blank">
                          <area shape="circle" coords="45,145,10"
                            href="https://www.facebook.com/3CTE.POLAND/?fref=nf"
                            target="_blank">
                          <area shape="circle" coords="72,145,10"
href="https://www.linkedin.com/company/3city-electronics-sp-z-o-o-?trk=company_logo"
                            target="_blank">
                          <area shape="rect" coords="435,34,613,52"
                            href="http://www.3CityElectronics.com/"
                            target="_blank">
                           </map>
                      </div>
                    </font></span></div>
                <br>
                --<br>
                ______________________________<wbr>_________________<br>
                yocto mailing list<br>
                <a moz-do-not-send="true"
                  href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
                <a moz-do-not-send="true"
                  href="https://lists.yoctoproject.org/listinfo/yocto"
                  rel="noreferrer" target="_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><br>
                <br>
              </blockquote>
            </div>
            <br>
          </div>
        </div>
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

--------------DB09CAFCA94B8DEDFC9ADCEB--
