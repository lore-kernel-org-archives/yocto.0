Return-Path: <gholhakiii@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2836BE0085D; Tue, 12 Nov 2019 08:53:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gholhakiii[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [74.6.135.41 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from sonic302-2.consmr.mail.bf2.yahoo.com
	(sonic302-2.consmr.mail.bf2.yahoo.com [74.6.135.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF35FE007AA
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2019 08:52:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1573577579; bh=b3XScAs4zuWKEs0nkcNEfxNr7BrZcUmWEvhvBuZ0F7U=;
	h=Date:From:To:In-Reply-To:References:Subject:From:Subject;
	b=pLJGHVnGafFguQtQK1RGFroQYsoAgebIIF97R5PqE0Ojf1qEi7vRAwcyeUyCp5POfzQXYo28Y+jqKYYCJamn6VqyBqCAwHJyC2DcqdB+vJqD7X5S0wAh5O5oBi2vd/GIstSmSaikmmhsyWeyiu6Bu8/Q1F1keA6pGW4iRP1+sNQSQWyuYCtPPcq2tHK+r6HS4u5BFqfO5cKOid76UCF3qktUFyyB9viKAz5NnufF0MIszz09qU7YRLk8prJma1rSrYgDu2nOahvlv2PusmuqJYhpnd23XOcljcHG1NjA8oXe8G0PUtx73q2NUHwpgWGkqGDmNiOYjbfAVaVoiDbTZQ==
X-YMail-OSG: yJVJDmsVM1lAuM8Zvj0d8rS.GnLAug11VyM742XxvQpI1yZHuoAB3etRyy.igvX
	cImSSn3UFCxTulHP61kx9Qbppx6mVfyygjuLFtUd0.3XDEghJOTRaXsCPXOtJuoEFPdhypMr_eBN
	_WBb89kbJXckjFiT43Ik5iHc6x3t_kRQjwE24wcIsY1GoGoL0H75zcsbNcjP9NS7ugnLoOjE5lHA
	eVHzRTcwIb7Pv7D35ohjUzEBfa9G0c7O.kLKdCrFkKmI3OCeTHgvLDUrN1lRopOomsZ4MU_XLyV9
	E8hRWo1c6co.ys_thqgWSIdkCBTSmnCBG6z0DZWr4NDpVyWkOYBegb2kQRCALIVOuVemYI2Okpp_
	5hfVvUx5QZCYlcfb_VI.VKMdrVxtaIolsrivTNA0EsRrNNyKZQlaBQW9GrZpaO9LHnOp9LWS1ws6
	vzbV75vBru0v3SuKL84pchQLHg4yG1VZWc507BjtVVcQ0UfxAo7mcCAwm2rzq64psbKnf8dTDpn9
	ODxer3dtO1zOt1IdlOaU.9ZLbmEeb12uc0bCxt.GF3yDC9.8vOwY1nx1DEvJLVAyypl0qO7B7YJP
	m2ZPOUZU5aGEb9HRXX6lLE74FsFvZ6Jn_bjS14VQ_S.fx4DSeKvct26zhUtBICytHC4QtsxJwq8e
	BLwG6oiPIkz3cVkV6sthx4AIlAHn9Qlibd6ddr5zu9u1Wo223_W72KlglLZeOxlnNCyL1HXR3Lb.
	zD7mlZm2qtYA3LRIqQux7TXZMOxULGJXprz78EbmCphl4aTTKgT160HI6TA9pElmE53ffHzOoj5h
	7G7DFnYqg7IZQLoZ7tHkCYivMYXRQpUXB4Sm6y2smU.gIjv_d3uAZK3gINwbBGG54POfnx9WQJL2
	U_ud5_HiWRGYmNwSCIUoGzdNDKkVPHcrTVgp9twJ__GnfSCdXnyk9yHHX55rCx46Vv_BjwQ.d7XV
	T5KqaClJ3_IqKZYDI.lYbKPUG23ZuIFW1Lrch1Lks6KXkRihKhR2m7QIXwJOeEgLZ6LflioflgaG
	Rey8eiGmOLfy.fyihYrwgjdSyCHsSEhqIzwV0iapSXHc7787VMmUiZu4cZDNSKO3HEQIIIFtsi.v
	JGZ0pNxzBYlB6oEtaZE8pBAaZo1oyRuaJaPdMZVfpLplxJ0naqkMYR3VjoNyKokZFEEc.WAm8ueP
	L7E7z6SqY.zjWRACgsj.v.bIc.Gj6r55jEriLYD2FJ4mPSJZTpJa3q4NOGRSOMDa4xTuXnKYcPFv
	dGplglXUlfcQNF7QXqI8Y.QYNHmwx1Chr18WMlC5oc6PRDP4.d2.B47JL6HLK1SzcWPsOivYAK2T
	yWKNW4sllbywm0SRv5S.y8IE-
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic302.consmr.mail.bf2.yahoo.com with HTTP;
	Tue, 12 Nov 2019 16:52:59 +0000
Date: Tue, 12 Nov 2019 16:52:56 +0000 (UTC)
From: "gholhakiii@yahoo.com" <gholhakiii@yahoo.com>
To: Yocto discussion list <yocto@yoctoproject.org>, 
	Paul Barker <paul@betafive.co.uk>, Ross Burton <ross.burton@intel.com>
Message-ID: <1602777216.2063025.1573577576252@mail.yahoo.com>
In-Reply-To: <412525dd-238f-dc9f-af9a-f7ef186059a3@intel.com>
References: <37113658.2021239.1573572818816.ref@mail.yahoo.com>
	<37113658.2021239.1573572818816@mail.yahoo.com>
	<509b816d-82e8-4ca6-ade7-f8f0370f3060@www.fastmail.com>
	<1118649944.2067878.1573575470930@mail.yahoo.com>
	<412525dd-238f-dc9f-af9a-f7ef186059a3@intel.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.14680 YMailNorrin Mozilla/5.0 (X11; Linux x86_64;
	rv:60.0) Gecko/20100101 Firefox/60.0
Subject: Re: Building only the app and not the Linux core
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
X-List-Received-Date: Tue, 12 Nov 2019 16:53:01 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_2063024_958554492.1573577576250"

------=_Part_2063024_958554492.1573577576250
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi Ross,
so you mean there is no way not to build them? I don't need any native tool=
.I define my cross-compilation toolchain in my layer.=C2=A0I asked you in t=
witter, you said "Use multiconfig to split the Linux and=C2=A0 rtos entirel=
y". I could not figure it, so I decided not to bother you in twitter and as=
k it here :)
Em


    On Tuesday, November 12, 2019, 5:24:10 PM GMT+1, Ross Burton <ross.burt=
on@intel.com> wrote: =20
=20
 On 12/11/2019 16:17, gholhakiii@yahoo.com wrote:
> My question now is, how can I avoid hassle of building the x86_64-linux?=
=20
> I just need my test.elf file.

Have a look in that folder to see what it is building.=C2=A0 That directory=
=20
is for native tools, like GCC.

Ross
 =20

------=_Part_2063024_958554492.1573577576250
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="ydp7b616453yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"><div></div>
        <div dir="ltr" data-setdir="false">Hi Ross,</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false">so you mean there is no way not to build them? I don't need any native tool.</div><div dir="ltr" data-setdir="false">I define my cross-compilation toolchain in my layer.&nbsp;</div><div dir="ltr" data-setdir="false">I asked you in twitter, you said "<span>Use multiconfig to split the Linux and&nbsp; rtos entirely". I could not figure it, so I decided not to bother you in twitter and ask it here :)</span></div><div dir="ltr" data-setdir="false"><span><br></span></div><div dir="ltr" data-setdir="false"><span>Em</span><br></div><div dir="ltr" data-setdir="false"><br></div><div><br></div>
        
        </div><div id="yahoo_quoted_4061641543" class="yahoo_quoted">
            <div style="font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:13px;color:#26282a;">
                
                <div>
                    On Tuesday, November 12, 2019, 5:24:10 PM GMT+1, Ross Burton &lt;ross.burton@intel.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div dir="ltr">On 12/11/2019 16:17, <a shape="rect" ymailto="mailto:gholhakiii@yahoo.com" href="mailto:gholhakiii@yahoo.com">gholhakiii@yahoo.com</a> wrote:<div class="yqt2894169687" id="yqtfd19641"><br clear="none">&gt; My question now is, how can I avoid hassle of building the x86_64-linux? <br clear="none">&gt; I just need my test.elf file.</div><br clear="none"><br clear="none">Have a look in that folder to see what it is building.&nbsp; That directory <br clear="none">is for native tools, like GCC.<br clear="none"><br clear="none">Ross<div class="yqt2894169687" id="yqtfd73792"><br clear="none"></div></div></div>
            </div>
        </div></body></html>

------=_Part_2063024_958554492.1573577576250--
