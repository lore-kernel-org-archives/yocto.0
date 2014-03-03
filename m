Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B61CE00841
	for <yocto@yoctoproject.org>; Mon,  3 Mar 2014 06:53:35 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 29FE427E001;
	Mon,  3 Mar 2014 14:53:33 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id Nl5MktsxKPPL; Mon,  3 Mar 2014 14:53:29 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 663918610D;
	Mon,  3 Mar 2014 14:53:29 +0000 (UTC)
Message-ID: <53149766.2050608@dynamicdevices.co.uk>
Date: Mon, 03 Mar 2014 14:53:26 +0000
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: Rick Bianchi <bianchirickkutta@gmail.com>
References: <CAA7h+EqtOE2spfgtXi2CiogUFsytGxyb4EgqSAoanwTximA-+w@mail.gmail.com>
In-Reply-To: <CAA7h+EqtOE2spfgtXi2CiogUFsytGxyb4EgqSAoanwTximA-+w@mail.gmail.com>
X-Enigmail-Version: 1.6
Cc: yocto@yoctoproject.org
Subject: Re: WARNING: Failed to fetch URL http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gz, attempting MIRRORS if available
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
X-List-Received-Date: Mon, 03 Mar 2014 14:53:36 -0000
X-Groupsio-MsgNum: 18305
Content-Type: multipart/alternative;
	boundary="------------060609050808010802020006"

--------------060609050808010802020006
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


On 03/03/2014 14:36, Rick Bianchi wrote:
>
> Does anyone know how I can get around this error? There is no such
> package on sourceforge "Fetcher failure for URL:
> 'http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gz'.
> Unable to fetch URL from any source."
>

Rick, as Paul mentioned there seems to be something really strange going on.

If you look in the docbook-utils-native recipe (which is at r3 for me in
master:d6596f5e0446b6aa3ae845389965bb2852f17b65) it is 0.6.14

That recipe doesn't use the openjade tarball although it has a
dependency on openjade-native

If you look at the openjade-native recipe it is at version 1.3.2

So, you'd expect docbook-utils-native to be pulling down a 0.6.14
docbook tarball, or if you were building openjade-native you'd expect
the openjade 1.3.2 tarball to be pulled down (I believe)

So it looks as though somehow there's some kind of corruption that is
mixing up openjade with the 0.6.14 of docbook for some reason.

i.e. I don't believe you're going to find a tarball of an
openjade-0.6.14 release.

It might be better to try checkout out your layers again and doing a
rebuild from scratch ?

Cheers,

Alex

> Build Configuration:
> BB_VERSION = "1.18.0"
> BUILD_SYS = "x86_64-linux"
> NATIVELSBSTRING = "Ubuntu-12.04"
> TARGET_SYS = "arm-poky-linux-gnueabi"
> MACHINE = "overo"
> DISTRO = "poky"
> DISTRO_VERSION = "1.4.3"
> TUNE_FEATURES = "armv7a vfp neon"
> TARGET_FPU = "vfp-neon"
> meta
> meta-yocto = "(nobranch):e2bb4a70a99a057d45316bbac65d6044ea54c484"
> meta-gnome
> meta-oe
> meta-xfce
> meta-systemd
> meta-networking
> meta-multimedia = "(nobranch):cb182019c4f7485713cb50623240c01882448ffd"
> meta-gumstix = "(nobranch):f10408773c2e81cc520c5a022c8bbe232a7b26aa"
> meta-gumstix-extras =
> "(nobranch):2b249710f1441841f326e9e8ab6fb2a217e84b73"
>
>
> WARNING: Failed to fetch URL
> http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gz,
> attempting MIRRORS if available
> ERROR: Fetcher failure: Fetch command failed with exit code 8, output:
> http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gz:
> 2014-03-03 07:34:57 ERROR 404: Not Found.
>
> ERROR: Function failed: Fetcher failure for URL:
> 'http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gz'.
> Unable to fetch URL from any source.
> ERROR: Logfile of failure stored in:
> /home/infinitezero/yocto001/build/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r5/temp/log.do_fetch.5555
> ERROR: Task 1501
> (/home/infinitezero/yocto001/poky/meta/recipes-devtools/docbook-utils/docbook-utils-native_0.6.14.bb
> <http://docbook-utils-native_0.6.14.bb>, do_fetch) failed with exit
> code '1'
> NOTE: Tasks Summary: Attempted 1825 tasks of which 1820 didn't need to
> be rerun and 1 failed.
> Waiting for 0 running tasks to finish:
>
> Summary: 1 task failed:
> /home/infinitezero/yocto001/poky/meta/recipes-devtools/docbook-utils/docbook-utils-native_0.6.14.bb
> <http://docbook-utils-native_0.6.14.bb>, do_fetch
> Summary: There was 1 WARNING message shown.
> Summary: There were 2 ERROR messages shown, returning a non-zero exit
> code.
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 

Dynamic Devices Ltd <http://www.dynamicdevices.co.uk/>

Alex J Lennon / Director
1 Queensway, Liverpool L22 4RA

mobile: +44 (0)7956 668178

Linkedin <http://www.linkedin.com/in/alexjlennon> Skype
<skype:alexjlennon?add>

This e-mail message may contain confidential or legally privileged
information and is intended only for the use of the intended
recipient(s). Any unauthorized disclosure, dissemination, distribution,
copying or the taking of any action in reliance on the information
herein is prohibited. E-mails are not secure and cannot be guaranteed to
be error free as they can be intercepted, amended, or contain viruses.
Anyone who communicates with us by e-mail is deemed to have accepted
these risks. Company Name is not responsible for errors or omissions in
this message and denies any responsibility for any damage arising from
the use of e-mail. Any opinion and other statement contained in this
message and any attachment are solely those of the author and do not
necessarily represent those of the company.


--------------060609050808010802020006
Content-Type: multipart/related;
 boundary="------------000109040102050000050008"

--------------000109040102050000050008
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <div class="moz-cite-prefix">On 03/03/2014 14:36, Rick Bianchi
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAA7h+EqtOE2spfgtXi2CiogUFsytGxyb4EgqSAoanwTximA-+w@mail.gmail.com"
      type="cite">
      <div dir="ltr"><br>
        <div>Does anyone know how I can get around this error? There is
          no such package on sourceforge "Fetcher failure for URL: '<a
            moz-do-not-send="true"
            href="http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gz">http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gz</a>'.
          Unable to fetch URL from any source."</div>
        <div><br>
        </div>
      </div>
    </blockquote>
    <br>
    Rick, as Paul mentioned there seems to be something really strange
    going on.<br>
    <br>
    If you look in the docbook-utils-native recipe (which is at r3 for
    me in master:d6596f5e0446b6aa3ae845389965bb2852f17b65) it is 0.6.14<br>
    <br>
    That recipe doesn't use the openjade tarball although it has a
    dependency on openjade-native<br>
    <br>
    If you look at the openjade-native recipe it is at version 1.3.2<br>
    <br>
    So, you'd expect docbook-utils-native to be pulling down a 0.6.14
    docbook tarball, or if you were building openjade-native you'd
    expect the openjade 1.3.2 tarball to be pulled down (I believe)<br>
    <br>
    So it looks as though somehow there's some kind of corruption that
    is mixing up openjade with the 0.6.14 of docbook for some reason.<br>
    <br>
    i.e. I don't believe you're going to find a tarball of an
    openjade-0.6.14 release. <br>
    <br>
    It might be better to try checkout out your layers again and doing a
    rebuild from scratch ?<br>
    <br>
    Cheers,<br>
    <br>
    Alex<br>
    <br>
    <blockquote
cite="mid:CAA7h+EqtOE2spfgtXi2CiogUFsytGxyb4EgqSAoanwTximA-+w@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>Build Configuration:<br>
          BB_VERSION = "1.18.0"<br>
          BUILD_SYS = "x86_64-linux"<br>
          NATIVELSBSTRING = "Ubuntu-12.04"<br>
          TARGET_SYS = "arm-poky-linux-gnueabi"<br>
          MACHINE = "overo"<br>
          DISTRO = "poky"<br>
          DISTRO_VERSION = "1.4.3"<br>
          TUNE_FEATURES = "armv7a vfp neon"<br>
          TARGET_FPU = "vfp-neon"<br>
          meta <br>
          meta-yocto =
          "(nobranch):e2bb4a70a99a057d45316bbac65d6044ea54c484"<br>
          meta-gnome <br>
          meta-oe <br>
          meta-xfce <br>
          meta-systemd <br>
          meta-networking <br>
          meta-multimedia =
          "(nobranch):cb182019c4f7485713cb50623240c01882448ffd"<br>
          meta-gumstix =
          "(nobranch):f10408773c2e81cc520c5a022c8bbe232a7b26aa"<br>
          meta-gumstix-extras =
          "(nobranch):2b249710f1441841f326e9e8ab6fb2a217e84b73"<br>
        </div>
        <div><br>
        </div>
        <div><br>
          WARNING: Failed to fetch URL <a moz-do-not-send="true"
            href="http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gz">http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gz</a>,
          attempting MIRRORS if available<br>
          ERROR: Fetcher failure: Fetch command failed with exit code 8,
          output:<br>
          <a moz-do-not-send="true"
            href="http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gz">http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gz</a>:<br>
          2014-03-03 07:34:57 ERROR 404: Not Found.<br>
          <br>
          ERROR: Function failed: Fetcher failure for URL: '<a
            moz-do-not-send="true"
            href="http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gz">http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gz</a>'.
          Unable to fetch URL from any source.<br>
          ERROR: Logfile of failure stored in:
/home/infinitezero/yocto001/build/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r5/temp/log.do_fetch.5555<br>
          ERROR: Task 1501
          (/home/infinitezero/yocto001/poky/meta/recipes-devtools/docbook-utils/<a
            moz-do-not-send="true"
            href="http://docbook-utils-native_0.6.14.bb">docbook-utils-native_0.6.14.bb</a>,
          do_fetch) failed with exit code '1'<br>
          NOTE: Tasks Summary: Attempted 1825 tasks of which 1820 didn't
          need to be rerun and 1 failed.<br>
          Waiting for 0 running tasks to finish:<br>
          <br>
          Summary: 1 task failed:<br>
/home/infinitezero/yocto001/poky/meta/recipes-devtools/docbook-utils/<a
            moz-do-not-send="true"
            href="http://docbook-utils-native_0.6.14.bb">docbook-utils-native_0.6.14.bb</a>,
          do_fetch<br>
          Summary: There was 1 WARNING message shown.<br>
          Summary: There were 2 ERROR messages shown, returning a
          non-zero exit code.<br>
          <br>
        </div>
        <div><br>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
yocto mailing list
<a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>
</pre>
    </blockquote>
    <br>
    <div class="moz-signature">-- <br>
      <div class="preview">
        <p style="font-family: Helvetica, Arial, sans-serif; font-size:
          10px; line-height: 12px;"><a
            href="http://www.dynamicdevices.co.uk/" class="clink"><img
              src="cid:part7.09040506.08030608@dynamicdevices.co.uk"
              alt="Dynamic Devices Ltd" id="sig-logo" border="0"></a></p>
        <p style="font-family: Helvetica, Arial, sans-serif; font-size:
          10px; line-height: 12px; color: rgb(153, 153, 153);"><span
            id="name-input" style="font-weight: bold;" class="txt">Alex
            J Lennon</span> <span id="title-sep">/</span> <span
            id="title-input" style="color: #999;" class="txt">Director</span><br>
          <span id="address-input" style="color: #999;" class="txt">1
            Queensway, Liverpool L22 4RA</span> </p>
        <p style="font-family: Helvetica, Arial, sans-serif; font-size:
          10px; line-height: 12px;"> <span id="mobile-input"
            style="color: #999;" class="txt">mobile: +44 (0)7956 668178</span>
          <br>
          <br>
        </p>
        <p style="font-size: 10px; line-height: 12px; font-family:
          Helvetica, Arial, sans-serif"> <a id="linkedin-input"
            class="social" href="http://www.linkedin.com/in/alexjlennon"><img
              src="cid:part9.01050104.06070002@dynamicdevices.co.uk"
              alt="Linkedin"></a> <a id="skype-input" class="social"
            href="skype:alexjlennon?add"><img
              src="cid:part11.06060900.04020506@dynamicdevices.co.uk"
              alt="Skype"></a></p>
        <p id="disclaimer-input" style="font-family: Helvetica, Arial,
          sans-serif; color: rgb(153, 153, 153); font-size: 9px;
          line-height: 12px;width: 25%" class="txt">This e-mail message
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
          do not necessarily represent those of the company.</p>
      </div>
    </div>
  </body>
</html>

--------------000109040102050000050008
Content-Type: image/png;
 name="ddlogo-4.png"
Content-Transfer-Encoding: base64
Content-ID: <part7.09040506.08030608@dynamicdevices.co.uk>
Content-Disposition: inline;
 filename="ddlogo-4.png"

iVBORw0KGgoAAAANSUhEUgAAAGwAAAA9CAIAAADH1hvIAAAAK3RFWHRDcmVhdGlvbiBUaW1lAFNh
dCA1IEF1ZyAyMDA2IDExOjQ5OjUwIC0wMDAwVeKl8wAAAAd0SU1FB9YIBQoyDghCEsEAAAAJcEhZ
cwAACxEAAAsRAX9kX5EAAAAEZ0FNQQAAsY8L/GEFAAAO9UlEQVR42u1bCVSTV9pO8mUPCZCEJRBA
IOyIIrsoqK0V6WAttWptj7b+dSynOgenY4ttbe3ixsyUaWfmzHRmOv7/eMbxt1qrtra4DZsisshO
kB0hQEIWkpB8+ZJ8mTeEIlJEtEySzvgcjid+ufd+733u+z7v3UK0WCyER/hhIDnagP8EPCJxDvCI
xDmA85IoGx7Oyc2NSUgovHTJ0bbcB85IosFg+PXHH0fGxpqNxtwdO3766qtr169v6+hwtF33hsWZ
gOP4F2fOiKKjH8vMvFlXh1ssJrNZq9W+8/777gLBG2+/PaJWO9rGaeBEJFbfvLk8IyN0wYIvz50D
NkdRQ3u/tKl7YEilNuN4Z3f3uuefF4pEf/3b30wmk6ONvQtOQaJkYGDrK694+vl99MknKIpiRtNt
qbK+s7+hS2L7a709NDKqh5L/LC6OSUpKXrasvKLC0VbfgYM1UafTHcjPh+zBZDAaa2pAATWo8ZZE
phrVE4nEiWKYydwrVXYNypOTU6rKyjZv2rT22Wdf2r4d2HewGo7BYSRCwB7//PPo+PjS8vKiCxd+
+9FHdBa7vV82qNRY8OkXUaMo1tEvk6pGt23dCoy7MJkLEhN/WVAAzusw/sZAtNh92QdvrKisfG3P
Ho1anX/gQMbKleBogwr1yN3eNwNIJIKXG4fLZjY2N+fu3t0/MPDL/fufzMggkRzjE/Ymsae39619
+0Da3s7Le/nFF0kIMjwyCn8gzg/aFBUhCfhuLBoFEtHuN98MCwn51cGDkRER9uyODfYbOrVG8+4H
H8Snpgq8vRsqK3O2bRs1mNr6hmUj2odgEICZ8e5BeY9Umbk6ExpcnJy8bNWq1/LyFEql/fgbg/08
MTktjcfjFeTnh4aEQAIeUKi1esMs4/c+fSAQuBympxu7XyLJ27u3pLT0zOefx8XG2qdfALLd3qQa
GTm8f3+ISATc9coUOE64L4M0CpnHZs6yfS2K+QuFx44cWbx8eWdn538miTa09vaPaEfDAoRytU6P
mWYuDCQiLtor2G9nLkYkkAKRRF8k5rqxKpmSrVKp6HS6PTtlbxKNJlN1a0fbbUlSVJi3OwcE0YzP
pCcmgmHAIp6hAJ8YGEd+phWv+LN+ZySyHEiEhzw+356dsjeJNoAXXqysFXrykyJDzRaCUqN/CGFm
EFzjyetQAvYXbOeQxZHbE44h0YY+6bBEJo8OCogKClBqUZ0Bm2VFhECJRFZ6kcK/Mn7UiF+Z/BXk
SVhoI/adMDqSRABusdR3dLf3DSRGhfrwuDKV1mjGZ6xB9CfGRpFXlZmOHzW+aSJM5R2SFZFEcmGx
7NkLB5Nog85gKKpp8OK6JUeFIQhFrhmddt7lThDGU57txhsLDBu1BLmjrb4DpyDRhiGF6mzZjTB/
nwUhQVo9ptHf8TI6gR1LfhqsPYrl9VmaZmjEaDSiej1hLqafs4cTkUgYUzRxT3/3gDQuTOTn7Wk0
mUkEBORPSIo9b/y4Dv/2vmub8b2p/2YSbYD1zNWGFl5v39KYSCbRfcjSf9zwPkbQO9que8IZz1hs
kI9oGjp7ZZbuQtPvZs8ghmFajcbOptqVRJPJJBL6RAb6k5A5fi/RQgwnpWVRf44ZjRDwLPtmZ/uR
GB8Xl5Obe/bc2SXzw59JT4GZ9lztfXgSA3PoR35BPyWp1j+9fn1gQACHzbZbvwj2JPHoZ58VHD58
ID9/xerV7a3irNSEjOQ4d7bLD2mTSXDNpr61j1EikMb/9NWd2Rs3rsvOvlpU5ObmZrd+EexJIsyC
n8zIqCgt3bhuXfamTVu2bSObsWdXpMLckEZ54PxGspAXkze8zyxbbsz5pODTuNRUCpVac+3azpwc
Oo1mTwYJ9k8sJIS8cdPm8+fO40QkITX1w0OHggUeGx5Pi5gnnKUpIH/BxKQ8xldbKb8v+aomNjn5
i7Pn/vLnvx788BDfw8PO3fnOJHttymIms85ghAWybRsR3tvQ0HDg4Ie9Pd3v7d373Pr1Co32ap14
QC6f2GcM9hVEJdDe0S+ZaIRH8MumvZ2IrK2vb96zd29z6603Xs9bs+YpMtnqy1CPRaOx6BQ7zxPt
RyJqNKl16JSNL7PZfPHihcOHD7q5uR7+4IOlqakdkqHrjS0aHTqFRJqFuZL6SgZlp0ZmeO/AgRMn
T27e/OL27TkcDueu/hAsLAaNTbdrRNsvnOkUMp/DcmHQJq/JEATJyFh9/nxhZmbWhs2bn9uyhWjQ
bXw8PSEihEpBxk20IPHI2veYJavxX3z2x2MQvwNDsnPnvtm9+40pDNLICI/NsjODBIccmZrNuFqP
oRg2ZYUrlUk/+fg3Z8+c/p+tW1/ftYtMpQ3IlZ5C0pClI5SY8k3hhT3vvkumUN56c29KyuIpRwtk
EsJmUukPnqB+rCTaYDCaNCj8c9fGl3XtLBYfOrS/RdzyTl7elhdeoFAp4tZbr+/ZU9vYuGvXa89k
r6NSqZOrgPy50KlMGmVOzrx+ZCTaKNNjJrUenWICjpuLiouBShqZHJ+QcPLUqfUbntvx6k53d/cp
1Zl0KodBs3Ma+T4cSaINOG7RGjCd3mC5mwsURf//xPEbN27syv25SCSa/BXYTKWQXZl0MkJyMH9j
cDyJNpisQomimOm+UQm8cZh0R8nftHAWEm0wWKdBBhM+/QmBdfpCh2kg1eHxO9UwpyKRMBaqowaj
FsUmG2aVPxoVEgh5rrd/5gROR6INMCfXooZR1Lq8QRCiK4P+EOtru8FJSbTBaMaNZjODQnGy8J0K
pybxxwJnlJgfHR6ROAdwXrV2EoDc3eobDPMT9A8rJXKFhUAM8fVq6x+iIeQgH08203r97P6e2NDe
cfh/j/27be2RDDZ3dP07Wu4ekI5oRx+6Om6xyDXW6gKuG8FCDPX1NptxBpUSIvSqaeu2lbk/ibAs
w0yzvWr00CitrTtTUjbnzQIFFU3iTsngD2+KBCtMIsF6Vcp624fEpNMmFlczhTN48kNvjTxo3ecy
Vk6ZJ0xuAb7QowZgxIUxze1Ny9iN4+l7TiSuW75k8q8Kvl94huo2oAasQyIN9vGceKLSjtZ29PDd
xs8Up5/inLxUVFxdA9NcDpOZGBVR19aeGBmBmUxZaam2Ap+eOhPi71fZ3Dw/OPhqXb1WjwZ4ee/Y
mE2lUDQ63dGvC1s6e2hUamxYMIxaVHBgZOC8gmMnUuZHnb5SDO2sSVui1GiKq2ppdMpLWU/GhARf
qawZVqrWP7FCh6LHvrlY09qKm3EXBvOtl7e4c9hXahoGhxXAqRk3p8ZEBgq8wAa9ASupa5YqlEAB
i0Fftmi+ZFjRJ5OvShy/aFwlbjdgmA41+Hl5hAcIh1XqsoYWKA8+5eXunrUkEVq4XFWr0mphvHiu
7LSF0TBIPYOykromHMf9PfnpsdFgv0ylhld7uLJHRnUsOh0YU2pHOfBKCuWennitvrGouib3+Q3z
BN5y1UjB30+wmPSwef75//f3J1ISaRQKPKxqEmevSP/Htxd4HNf3tr9sMGL7Pj0CFZfFxf7x5Jcu
TEZ+bg6FTP5nZc3xwkv+Xl6gCZ19EqGnx/4d22+K2/70xdm1y5cW7P7Z+bLyfxRemi8K0hvQUb31
msPxwssyheqdbVu5HLZMOcIZO4aHLi0KCw7z9+2TykvrmiCm/L08im82uLqwHo9PB1+qbe/6+loV
8FLRdEuu1vA4bKPJ1NjevSolDp4YTaBjeGFFDbCZkbQIqmt01h+5fVNeJfLzyQyMBz+6Wt/ybXn1
M8sXQ/jHhgSFB/jWtXVBRRqV5Ok2vn/uyhq/QD7xZNzfv0/i5es3VqUkiYS+ZATx4nHXLLN63zwf
gY+Hx/X6RvhcXF0bHRLk4W49202PW0gmIywGI9RfOCRXSGTD4q7eF1avYtBoUH1lckKgr2Ci5VUp
ifAcxgO6sSJ+EYwHuDmKGczf7TioNJqK+qaXnsr05nHBqX09+ch3i2VbdPt58ROjQps6e7Q6fc/Q
cIC3J9Ch0ev9vT3AreChSCho7OwmjF0O57BZAt74FmTPoBSCeunCKDq0S0a4HBepcmR4ROPrwVND
Czp9WICvbESt0Gg93F2bu3qh/MLQIBqVMhstmsYTlVqtJ/fO9qc7e5z1xxLjCsuvL14wv6Smblt2
lu0hgoyfhNj0y4AZ3dkuzEmnHBzWneN5KvmOTbbyU3QTxYwWIsGFNdMvBlzodOg8ZgLm8aLapgkv
4DCsgRYjmne6qDw+PKSxqzcpInSiFggOm8mY/DIIc2ji4o3aiSdubBY4dfrC6I7+wWpxR7W4/aml
ybPhcRoSIYprW9uSoiNt/70pvmX7kBAVAbF5pqiUQadGBAZM2xzol0qj7ZPKAgTehLHjFNmD/DSH
zWSSiKSufsl8UfC9ynRJhiAIGDQqmYSsjI/xcHMlWLcjzaBl4FYwKgIP92v1LZCYAwR3UgEMbWXL
LRTD6N+dLrBZDBiAn6TGuzAYBKvCGgbkSlBGoDvEzydYKDh+qQTcGUblYUhcuyzt4JGjR859PT84
6FbP7crmFq6r1VAIz/RFsV+XlT+fufJev6JzY7usWbbk9ydO/2RpCkTu5aoahUo9exJBrLNXpP3h
5JcZKUk+Hjx4e1baEvaYY8JcD0Ks9bZEoVZnJscDiQtDAwuv1ywKF8Fn0C8waZ63B0TGQlHQqaJr
yxfFTN529OVzfXjc0yUVMcEBZISk1IwmRYaGBgjPX6uKDRNBwRpxB6gwDMmJy6Vx4SIIJpgPCD15
szEb2bdv35RHrmyXhWGhkMWGFEoeh7MmfakriwWaSLDOlUhVLeKXn84ij0UxhE/4vADG2LUN0GZv
PteLywXJ47lyOiQDSrX6sYRFIQF+Qi/IbNagDgc1RBDi2GwLPtsaAY0S+fnCHIzryhHwecF+vqH+
/j0Dgz2SIW8+DyQVEpRCremXKjR6VMjnLYmJsskF+B2TTpeqRmDCAeKYEh1m0xYYCTAp1E8wITV8
Vw7EMjgXnUoeUqg0OtSL6wbJB2ohZGRQqdTpDZBh4sODIXgFfC4kNJ0Bg1TmzXWfDYkPsItjMpl/
d/ykwJO/4YnHZu9c/w2Y7dr54vVKEMTI4ECIL0fb7HR4tJ84B3i0FTYH+Bdk7tmQGqQ4UwAAAABJ
RU5ErkJggg==

--------------000109040102050000050008
Content-Type: image/png;
 name="linkedin.png"
Content-Transfer-Encoding: base64
Content-ID: <part9.01050104.06070002@dynamicdevices.co.uk>
Content-Disposition: inline;
 filename="linkedin.png"

iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAACXBIWXMAAAsTAAALEwEAmpwYAAAA
GXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAgRJREFUeNqUUs9r1EAU/jKZ7I+2
abBZVikKoYhCsbB/gXcFwV7Eu3jwInjyogdBj3oSPHm14KGhBwuC/gkKUqtVSglYarduKutu2c1m
MuO82dqk1YX6YJL35r3vez/mWbWbCw3fd0PfnwjciQqOI51uH3HcjeK4M8+nToyHd640gnP1SViW
dSwCpRS+7vwKniy9D7k3WQl2+xYWv7Sx2epgxmMmaKMtcbrmjiSZrjL4U+MBr5RsfGwlEJr1jGvh
8dXzJuD24hqa3cFIgt09C1zn4kJk6KViWBovlgmk2jdKUn0IyykoSYeBbzbbuPXyk9GXVluoudVD
INtmqHtjOvNwVoTlmf5k+5mo+2fXZo3+4u5bbD24aPSVrQ7mpl20ewL3ltfxORaGhHCMylBCakNC
SfXPcglM4lU5Hl4+i+bPPYMhLJNCoKQbNkQqJ2CFF1149x33X60fkIhMGgxhGZXBiUDPwS5kHXPy
iT56HSH88COfhT6EMViZZXCMIeEUFsktOQe6c2TByCYMYfmAWPRlov92kaCcV2AfISCbvIRlqWYp
QaGv+5KFxp1yXgHdF32kE4awVv3Gc3XpwizWegp6e1Fy7L9eYbC/J398tO0zXGJ5ZVW3kKTRt53t
YO7kKXCnPGLvnEOWSBNsNLeRDkRkedefNsBYqN8twP+IVBGknP8twABFyPH3kUzF5AAAAABJRU5E
rkJggg==

--------------000109040102050000050008
Content-Type: image/png;
 name="skype.png"
Content-Transfer-Encoding: base64
Content-ID: <part11.06060900.04020506@dynamicdevices.co.uk>
Content-Disposition: inline;
 filename="skype.png"

iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAACXBIWXMAAAsTAAALEwEAmpwYAAAA
GXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAq1JREFUeNqMk0trE1EUx/935s4k
k1czbVpfWEctRaFiKZiCUCjqooggxZ0KfgC/QcVF1/oRBLsRXQjxgSu7qAsFpYuWoliLTaSNUJvQ
vJvceVzPndBSF0KHOTPD5fz+55z/vcNmXi2OZuKRHIWTiho4zFVruyg1OwWKaW7HzNz1kUEnk4pD
0xh2fQm6keDsvwJBIFGqNZ23K79yPBWNOJJH8K3q4VPVhfABjwQCSuSMQUiJXkNDNsVhHxDlxNgx
y+GmYaDuMbwvd9Ck0gpOcg2Xeo3wW0Wx7ePhzxZuDZgYT/JQgJG4ruvgLrXzmxL24ITOMHM+jpj+
7wg3jkVwb6kOUM5YQg/XFKu5gfroVhL0nsjwEF4stzA1v447Hzew0XIxHNcxngKebAnsMSo0EQSw
qFggyUBaGDBl1yh6nemz8aXOcHm+gNmv23i52cAmVVmqtMmrAIrlqqpqNkqPbaKerlcw1hdDNtMN
wMbrYh0vim209Cg6lL/ZEhhOmGHHmppDVeuQ221aWG4ZmFrIYy6/g4raErpunkjiebYfV9OgHImK
1ENm34OAYItcVQKTGQN3HRsPVko4+S6PoTc/sLDVCIXuD0ZD8ENdhoxiudpnNfVZk+FzQ+IKmTh5
JIGRnggerdWxQ1lpo+t6peOFB2SruUuMFZ4RrlSUgElx0fDx+HsNo7YVxrOstb+NapzZVeokiIJJ
P2S6HVBPUs1Dj3MWx05TwzVyfaKXI22qygwVypwreqgYSWgywAUuQkaxXPg+dl0POtMgKMb7e3Cq
WsdaTWBV7EKQwLLQ0NFMpDpVjBgebp8+GjLC82gEVxTWyjVnqC8F2+oe0+NWGmMHTqFH+91oC3A9
gUTERItgYuB6boEHnjtd+FPK5ctVR2r6oX5nRmMwTxSY707/FWAAwixkevHIXSQAAAAASUVORK5C
YII=

--------------000109040102050000050008--

--------------060609050808010802020006--
