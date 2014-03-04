Return-Path: <joelparker27@yahoo.com>
Received: from nm33-vm9.bullet.mail.bf1.yahoo.com
	(nm33-vm9.bullet.mail.bf1.yahoo.com [72.30.238.199])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E7A7E0099C
	for <yocto@yoctoproject.org>; Tue,  4 Mar 2014 06:22:58 -0800 (PST)
Received: from [98.139.212.151] by nm33.bullet.mail.bf1.yahoo.com with NNFMP;
	04 Mar 2014 14:22:58 -0000
Received: from [98.139.212.227] by tm8.bullet.mail.bf1.yahoo.com with NNFMP;
	04 Mar 2014 14:22:57 -0000
Received: from [127.0.0.1] by omp1036.mail.bf1.yahoo.com with NNFMP;
	04 Mar 2014 14:22:57 -0000
X-Yahoo-Newman-Property: ymail-5
X-Yahoo-Newman-Id: 978318.96159.bm@omp1036.mail.bf1.yahoo.com
Received: (qmail 19542 invoked by uid 60001); 4 Mar 2014 14:22:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1393942977; bh=G7+hf9dFmxn2oBx3fnSg6lvVseSTW2CdaipMcOVerXs=;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:In-Reply-To:MIME-Version:Content-Type;
	b=PCzVuVgtKzNuJ6UZoq997jvZ3ulpV4s8PJjvFe++aG30iT0/mZvOI0NpyHSbTtSU4EkWQ0BcyB3sTTZoA7YHE0WMElG5vdxtiZB5JErnwJFiZcWRd+N/lLLxbhuKCeUk+JvVOY2g9ga6qCUBnZdW58wOD+Q9LsoaKRq/Nxqx4xc=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:In-Reply-To:MIME-Version:Content-Type;
	b=rKf358upTmpcGnZP2/TOLnbKcQ/RP3lruDHvjoRG7cMkvLw3lUA+s2y6vPLATJfXLSpBLrezte1BdpbteJ8wP+haw2xA1UuMwZcNr3unovKVRtdjhdcMxcrGd/cYTL5QWedTv64XNiWPKtM7jshFp0BxaoiEyf37vvQBvqjaD7M=;
X-YMail-OSG: eVtV6DIVM1mT1gMg1XWkwo4cH1SE_1DhOpIU5tgOKBmsKv7
	suTjJC4uWma2pUU1CvBFYicSYrxkyX8Hcsc6ACC3b_uB9FI0UjZl5oDldH4w
	cBuXBTHaDoyofevdkzVH2vU5_lzFM._v07R19XLkDuBUkmP5r9691AtkTMBi
	mhzR3iJvHUcq2yC9.TkcEO3U06EVO5RESX8s06GC2QBa93DVJXmw8.l4OsJe
	8iuWFMjSLc3ENIJALtUjzSjLSzfD4dcpkc6IR9.A6Bx9P8zs52AMh0F9lEEy
	BxX4SDImDxQm6XfnQTln6JiF14hQA3TY25IJX0xqORX_Lh4qLuRSntC.YcEs
	YvzfFjjRdGrMSecj6c6ITE5o3hQeheDjff6SJROD0ETXIVufbAwlXYzX_zHe
	lXqq6ZOtFBvBiREqWW0MkUQP8aSbWtTjDK_b3hgh1Ov5rm5vjmZqtxawP4lV
	ucfABIyJb0vilXuMycPMULO.K10hQ2aqk1ZKLzQcs2sNFPwk21KocyMxxz1.
	.PTSBtQQPpwA3w6IcMaXvbmE4T3KRVQxdrLemf162m5bVilyiLTkjzJ835bY
	kSCPFXf.U6TWYEQAynvkvV5RSIJwWV7pukuM8fwmg.tf3GL9_NfcLha9hix7
	.E2ZlfCGG7fuvgHl1QlP3gllJhfyjhYdsWGErbDaBvJzGxSlDEERjSlO_cyI
	xhHzWoq4cBKxYNNPL9QcDcAfM7HUcr8_KKZvZZRHh5ZBvf1iD5obr18udEaw
	7PtrqEnsTEFIQkIeqIHTi8XLNP7odiEm4_kZiXYpBR8ZZLB3xL5VaVAUA7Nd
	ZIKyumg3AL6I5glGA0iFDXzrtQjW3gtOiH5ha5r1KlSd0f0wJkkuep0yO_b0
	xBLzLyMo-
Received: from [71.41.161.30] by web163101.mail.bf1.yahoo.com via HTTP;
	Tue, 04 Mar 2014 06:22:57 PST
X-Rocket-MIMEInfo: 002.001,
	WWVhaCwgdGhhdCBpcyB3aGF0IEkgdHJpZWQgYnV0IGl0IGdhdmUgbWUgdGhpcyA6CgpFUlJPUjogJ2h0dHBkJyBpbiBJTUFHRV9GRUFUVVJFUyBpcyBub3QgYSB2YWxpZCBpbWFnZSBmZWF0dXJlLgoKLS0gSm9lbCBQYXJrZXIKCgoKCk9uIFR1ZXNkYXksIE1hcmNoIDQsIDIwMTQgODowMCBBTSwgQWxleCBKIExlbm5vbiA8YWpsZW5ub25AZHluYW1pY2RldmljZXMuY28udWs.IHdyb3RlOgogCgoKT24gMDQvMDMvMjAxNCAxMzo1MCwgSm9lbCBQYXJrZXIgd3JvdGU6CgpJIGhhdmUgYW4gSW1hZ2UgZm9yIHRoZSABMAEBAQE-
X-Mailer: YahooMailWebService/0.8.177.636
References: <1393941002.38518.YahooMailNeo@web163105.mail.bf1.yahoo.com>
	<5315DC71.3080904@dynamicdevices.co.uk>
Message-ID: <1393942977.87424.YahooMailNeo@web163101.mail.bf1.yahoo.com>
Date: Tue, 4 Mar 2014 06:22:57 -0800 (PST)
From: Joel Parker <joelparker27@yahoo.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
In-Reply-To: <5315DC71.3080904@dynamicdevices.co.uk>
MIME-Version: 1.0
Subject: Re: Add Packages to Recipie
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Joel Parker <joelparker27@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 04 Mar 2014 14:23:01 -0000
Content-Type: multipart/alternative;
	boundary="700781406-2066224029-1393942977=:87424"

--700781406-2066224029-1393942977=:87424
Content-Type: text/plain; charset=us-ascii

Yeah, that is what I tried but it gave me this :

ERROR: 'httpd' in IMAGE_FEATURES is not a valid image feature.

-- Joel Parker




On Tuesday, March 4, 2014 8:00 AM, Alex J Lennon <ajlennon@dynamicdevices.co.uk> wrote:
 


On 04/03/2014 13:50, Joel Parker wrote:

I have an Image for the wandboard-solo and am trying to figure out the correct package names. For example:
>
>
>IMAGE_FEATURES += "splash ssh-server-dropbear"
>
>
>where do I get the name ssh-server-dropbear ? I am trying to add support for httpd, iconv and dev library, and sqlite3 and dev library, what would I put for the feature names ?
>
>
If you look in sources/poky/meta/classes/core-image.bblclass there's
    a list of supported IMAGE_FEATURES

For other packages which aren't features of the image you would (as
    I understand it) add the names of the packages (presumably httpd,
    sqlite etc.) in somewhere such as appending an image recipe,
    creating your own recipe, or in local.conf if you must

e.g. http://bec-systems.com/site/177/the-correct-way-to-add-packages-to-an-openembedded-image

Cheers, 

Alex


-- Joel Parker
>
>
>
>_______________________________________________
yocto mailing list yocto@yoctoproject.org https://lists.yoctoproject.org/listinfo/yocto

-- 

Alex J Lennon / Director
1 Queensway, Liverpool L22 4RA 
mobile: +44 (0)7956 668178 

 
This e-mail message may contain confidential or legally privileged information and is intended only for the use of the intended recipient(s). Any unauthorized disclosure, dissemination, distribution, copying or the taking of any action in reliance on the information herein is prohibited. E-mails are not secure and cannot be guaranteed to be error free as they can be intercepted, amended, or contain viruses. Anyone who communicates with us by e-mail is deemed to have accepted these risks. Company Name is not responsible for errors or omissions in this message and denies any responsibility for any damage arising from the use of e-mail. Any opinion and other statement contained in this message and any attachment are solely those of the author and do not necessarily represent those of the company.

--700781406-2066224029-1393942977=:87424
Content-Type: text/html; charset=us-ascii

<html><body><div style="color:#000; background-color:#fff; font-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;font-size:12pt">Yeah, that is what I tried but it gave me this :<br><br>ERROR: 'httpd' in IMAGE_FEATURES is not a valid image feature.<br><br>-- Joel Parker<div><span></span></div><div style="display: block;" class="yahoo_quoted"> <br> <br> <div style="font-family: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size: 12pt;"> <div style="font-family: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size: 12pt;"> <div dir="ltr"> <font face="Arial" size="2"> On Tuesday, March 4, 2014 8:00 AM, Alex J Lennon &lt;ajlennon@dynamicdevices.co.uk&gt; wrote:<br> </font> </div>  <div class="y_msg_container"><div id="yiv6054970685"><div>
    <br clear="none">
    <div class="yiv6054970685moz-cite-prefix">On 04/03/2014 13:50, Joel Parker wrote:<br clear="none">
    </div>
    <blockquote type="cite">
      <div style="color:#000;background-color:#fff;font-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;font-size:12pt;">
        <div>I have an Image for the wandboard-solo and am trying to
          figure out the correct package names. For example:</div>
        <div><br clear="none">
        </div>
        <div style="color:rgb(0, 0, 0);font-size:16px;font-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;background-color:transparent;font-style:normal;">IMAGE_FEATURES += "splash ssh-server-dropbear"</div>
        <div style="color:rgb(0, 0, 0);font-size:16px;font-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;background-color:transparent;font-style:normal;"><br clear="none">
        </div>
        <div style="color:rgb(0, 0, 0);font-size:16px;font-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;background-color:transparent;font-style:normal;">where do I get the name ssh-server-dropbear ? I am
          trying to add support for httpd, iconv and dev library, and
          sqlite3 and dev library, what would I put for the feature
          names ?</div>
        <div style="color:rgb(0, 0, 0);font-size:16px;font-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;background-color:transparent;font-style:normal;"><br clear="none">
        </div>
      </div>
    </blockquote>
    <br clear="none">
    If you look in sources/poky/meta/classes/core-image.bblclass there's
    a list of supported IMAGE_FEATURES<br clear="none">
    <br clear="none">
    For other packages which aren't features of the image you would (as
    I understand it) add the names of the packages (presumably httpd,
    sqlite etc.) in somewhere such as appending an image recipe,
    creating your own recipe, or in local.conf if you must<br clear="none">
    <br clear="none">
    e.g.
<a rel="nofollow" shape="rect" class="yiv6054970685moz-txt-link-freetext" target="_blank" href="http://bec-systems.com/site/177/the-correct-way-to-add-packages-to-an-openembedded-image">http://bec-systems.com/site/177/the-correct-way-to-add-packages-to-an-openembedded-image</a><br clear="none">
    <br clear="none">
    Cheers, <br clear="none">
    <br clear="none">
    Alex<div class="yiv6054970685yqt3492027316" id="yiv6054970685yqtfd27314"><br clear="none">
    <br clear="none">
    </div><blockquote type="cite"><div class="yiv6054970685yqt3492027316" id="yiv6054970685yqtfd82966">
      <div style="color:#000;background-color:#fff;font-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;font-size:12pt;">
        <div style="color:rgb(0, 0, 0);font-size:16px;font-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;background-color:transparent;font-style:normal;">-- Joel Parker<br clear="none">
        </div>
      </div>
      <br clear="none">
      <fieldset class="yiv6054970685mimeAttachmentHeader"></fieldset>
      <br clear="none">
      </div><pre><div class="yiv6054970685yqt3492027316" id="yiv6054970685yqtfd36308">_______________________________________________
yocto mailing list
<a rel="nofollow" shape="rect" class="yiv6054970685moz-txt-link-abbreviated" ymailto="mailto:yocto@yoctoproject.org" target="_blank" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a rel="nofollow" shape="rect" class="yiv6054970685moz-txt-link-freetext" target="_blank" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a></div>
</pre>
    </blockquote>
    <br clear="none">
    <div class="yiv6054970685moz-signature">-- <br clear="none">
      <div class="yiv6054970685preview">
        <div style="font-family:Helvetica, Arial, sans-serif;font-size:10px;line-height:12px;"><a rel="nofollow" shape="rect" class="yiv6054970685clink" target="_blank" href="http://www.dynamicdevices.co.uk/"><img id="yiv6054970685sig-logo" alt="Dynamic Devices Ltd" border="0"></a></div>
        <div style="font-family:Helvetica, Arial, sans-serif;font-size:10px;line-height:12px;color:rgb(153, 153, 153);"><span class="yiv6054970685txt" id="yiv6054970685name-input" style="font-weight:bold;">Alex
            J Lennon</span> <span id="yiv6054970685title-sep">/</span> <span class="yiv6054970685txt" id="yiv6054970685title-input" style="color:#999;">Director</span><br clear="none">
          <span class="yiv6054970685txt" id="yiv6054970685address-input" style="color:#999;">1
            Queensway, Liverpool L22 4RA</span> </div>
        <div style="font-family:Helvetica, Arial, sans-serif;font-size:10px;line-height:12px;"> <span class="yiv6054970685txt" id="yiv6054970685mobile-input" style="color:#999;">mobile: +44 (0)7956 668178</span>
          <br clear="none">
          <br clear="none">
        </div>
        <div style="font-size:10px;line-height:12px;font-family:Helvetica, Arial, sans-serif;"> <a rel="nofollow" shape="rect" class="yiv6054970685social" id="yiv6054970685linkedin-input" target="_blank" href="http://www.linkedin.com/in/alexjlennon"><img alt="Linkedin"></a> <a rel="nofollow" shape="rect" class="yiv6054970685social" id="yiv6054970685skype-input" target="_blank" href="skype:alexjlennon?add"><img alt="Skype"></a></div>
        <div class="yiv6054970685txt" id="yiv6054970685disclaimer-input" style="font-family:Helvetica, Arial, sans-serif;color:rgb(153, 153, 153);font-size:9px;line-height:12px;width:25%;">This e-mail message
          may contain confidential or legally privileged information and
          is intended only for the use of the intended recipient(s). Any
          unauthorized disclosure, dissemination, distribution, copying
          or the taking of any action in reliance on the information
          herein is prohibited. E-mails are not secure and cannot be
          guaranteed to be error free as they can be intercepted,
          amended, or contain viruses. Anyone who communicates with us
          by e-mail is deemed to have accepted these risks. Company Name
          is not responsible for errors or omissions in this message and
          denies any responsibility for any damage arising from the use
          of e-mail. Any opinion and other statement contained in this
          message and any attachment are solely those of the author and
          do not necessarily represent those of the company.</div><div class="yiv6054970685yqt3492027316" id="yiv6054970685yqtfd08287">
      </div></div><div class="yiv6054970685yqt3492027316" id="yiv6054970685yqtfd54558">
    </div></div><div class="yiv6054970685yqt3492027316" id="yiv6054970685yqtfd37581">
  </div></div></div><br><br></div>  </div> </div>  </div> </div></body></html>

--700781406-2066224029-1393942977=:87424--
