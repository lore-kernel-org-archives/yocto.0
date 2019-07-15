Return-Path: <madhukanthk@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CDF01E00C93; Mon, 15 Jul 2019 11:05:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (madhukanthk[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [98.137.69.205 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from sonic312-24.consmr.mail.gq1.yahoo.com
	(sonic312-24.consmr.mail.gq1.yahoo.com [98.137.69.205])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5D1EE00BF7
	for <yocto@yoctoproject.org>; Mon, 15 Jul 2019 11:05:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1563213937; bh=2PQXRHOubciNVRBFIM/g50ZoJVBJyxuZhvasrDY8bGI=;
	h=Date:From:To:In-Reply-To:References:Subject:From:Subject;
	b=pyGQPRBP+CDIM28gLJgqciYOQKkN07CTJGp4JjKvFOyyt0G9bXvop2n4KSbx+5nmFvwi4EnzMAsOhzLLMFG5c7B4rc1nC19NvMfzARfnsJ6aFarucYtHix7gdClo7NaS8xtlIIiY0t38c8uQo2BoqzrXDA4Q8oWUta4b4hcyYreEsWckVpIeUmR/d8L8Y50/+uNx4vRWujUEFk7IFhFCr6FIL2fnXmllOpcRKDtRCOkenJFL4yWNueVxvfSV5cR4/I8MAutirdwEMX6E/qP1iSNXOz6G37chEa2yf7/+Et6fNa0beukJcKZ/4TB6m4OCboYAHC05ZrQs6MYTHd4mkg==
X-YMail-OSG: ehTjBL8VM1m1ptU_XGVWIlszW5i72ANbmM1dOZC5vR0L8VR8jEOLx0vh0.PJ1yr
	vtB2omfsSaF04KMuPRhWwbabMAX2e_fIf4s73KJuT1KDLXw_TycXiHdx87WGWq0v3t8OCzm8mIYi
	KAzoOeJfSs7yMCA7Ox1u8PnySKtIeXPpC6zLpfNVi5DKIWLL1g_0JtnJLG_F7npq.qKKrj0btpyy
	fD3QkZDOsM.wx6d8fXoFu48WuO7HSHmvb4UYhIwOPBE77ytRAYemC6tPGUBRxDBmbYtYLaQ3wO4L
	L5REl4xR.YfR1DTV29ZenStzlZUZ2T9QXmlhTnOAOQMC6mjL1ZYWEqz0A1g92DuC1R.qR81wP1dw
	gtSHvhcWjQqzMfrndHW8JTgpkiXrk5h3PPnFGrGJEcUlyqzzmdPKNNGO.vsUuVh5k11dQKs9xg_p
	CNGfj0WIMrreQeN8.Ihe2B5Iv4i2zLMrlthYZM.zjCsKnKgZtx313YR7mSVw9KhbPVqyFN6xgdUP
	ZqeWd.T3OOLQd.SKhKC8MfbWP3H48EVfHFCPqZZed.4JgC6mhAi03R8TsxH2evgamoZwYLSItOWd
	8MdzrkueN6xJjb8XKHTCKxnKjkpxpy44AbAnmVSg1YsfYgm7L0stL1RZY4Vvp6AD7BK95ffCmwiU
	zZzjiigU25535ReS1q6arc3F_3IiQEZFS9gq4WDdOX8xH0bCkDjbIxJO8HjnCe9rS.EghHAesAff
	VfEcMTMFfYAfuuVK7qh93Hl3T9CXa16e9HnF3anM9P4Xp1QnL_ZkiaTkbrWY7bmphUbkdsKD7PpD
	JSIy74Dw4T5skuM246_gfqu0iloH0geXQGXzGEKZnomFrFaDp8EtcghWyuxEtqRQWmxWT9an78Wh
	LmDV23IlLsc_yXXwc7BDgvrKl3OWmEWaHLJyBBDD5Agb.aipTFw8dKtucSWLKJ85UZurlHDq4_Zj
	uwBCzyLy_67Me.4Kx8cnBlXAiUtPjg1MDt3.PlUxk.Teb_KXBCLSfavoCmfowFtsGmXILRXrVpMM
	HQ.zHUXko8MkP5J.IvOobx8MJt8bVQoEWXevNGlokQlscd9f9ct4LKtvOeFSrHThQMxq72.YshHn
	j_nOWlFQJSkZSNlS11054RE5MIu4VYvxBVwQmoTEfUxf8jHr6XElb0JMM5Xr1kf_lubXOi.3p1ZI
	9zeOGR6CElR.nHyMovmlJA30Z.H9zm8uOYd6Ii8Uo4JI-
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic312.consmr.mail.gq1.yahoo.com with HTTP;
	Mon, 15 Jul 2019 18:05:37 +0000
Date: Mon, 15 Jul 2019 18:05:35 +0000 (UTC)
From: Madhu Krishnamurthy <madhukanthk@yahoo.com>
To: Yocto Discussion List <yocto@yoctoproject.org>
Message-ID: <486568347.1593370.1563213935990@mail.yahoo.com>
In-Reply-To: <4f57a648-55e1-3ce7-53a4-c9df8da0f726@gmx.de>
References: <1600236519.1269258.1563172945935.ref@mail.yahoo.com>
	<1600236519.1269258.1563172945935@mail.yahoo.com>
	<4f57a648-55e1-3ce7-53a4-c9df8da0f726@gmx.de>
MIME-Version: 1.0
X-Mailer: WebService/1.1.13991 YMailNorrin Mozilla/5.0 (Windows NT 10.0;
	WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100
	Safari/537.36
Subject: Re: No GNU_HASH in the elf binary
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
X-List-Received-Date: Mon, 15 Jul 2019 18:05:38 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_1593369_623873553.1563213935986"

------=_Part_1593369_623873553.1563213935986
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Moritz,Yes, that was it. Thank you very much. Appreciate your help.
best regardsMadhu
    On Monday, July 15, 2019, 12:12:38 AM PDT, Moritz Porst <moritz.porst@g=
mx.de> wrote: =20
=20
 =20
Hello
=20
 On 15.07.19 08:42, Madhu Krishnamurthy wrote:
 =20
=20
   Hello, I am trying to package an already built binary executable called =
mlc (memory latency checker) to yocto and I get this error.=C2=A0=20
  ERROR: mem-tst-0.1 do_package: QA Issue: File '/usr/local/flex_pkgs/diags=
/mlc' from mem was already stripped, this will prevent future debugging!  [=
already-stripped] ERROR: mem-tst-0.1 do_package: Fatal QA errors found, fai=
ling task. ERROR: mem-tst-0.1 do_package: Function failed: do_package    Yo=
ur recipe is not called mlc but mem-tst-0.1
=20
    ERROR: Logfile of failure stored in:/home/cluser/ac/z_cpu/build/tmp/wor=
k/corei7-64-poky-linux/mem/tst-0.1/temp/log.do_package.27614 ERROR: Task(/h=
ome/cluser/ac/z_cpu/poky/../meta-flex/meta-z/recipes-utils/mem/mem_tst_0.1.=
bb:do_package) failed with exit=C2=A0code '1' NOTE: Tasks Summary: Attempte=
d 458 tasks of which 457 didn't need to be rerun and 1 failed.=20
  I googled and found that I need to add this=20
  INSANE_SKIP_mlc =3D "ldflags" INSANE_SKIP_mlc-dev =3D "ldflags"   =20
=20
Thus the two lines above can't work. The preferred way to do this is to use=
 ${PN} variable which expands to the package name. Like this: >> INSANE_SKI=
P_${PN} =3D "ldflags" <<
=20
=20
Best regards
 Moritz

 =20
    INHIBIT_PACKAGE_DEBUG_SPLIT =3D "1" INHIBIT_PACKAGE_STRIP =3D "1"=20
  But after adding that I still get this error.=C2=A0 ERROR: mem-tst-0.1 do=
_package_qa: QA Issue: No GNU_HASH in the elf binary:'/home/cluser/ac/z_cpu=
/build/tmp/work/corei7-64-poky-linux/mem/tst-0.1/packages-split/mem/usr/loc=
al/flex_pkgs/diags/mlc' [ldflags] =C2=A0 Appreciate any help.=20
  Thanks and regards Madhu=20
  (more log details) NOTE: Executing RunQueue Tasks NOTE: mem-tst-0.1 do_pa=
ckage_qa: Direct dependencies are['virtual:native:/home/cluser/ac/z_cpu/pok=
y/meta/recipes-devtools/pseudo/pseudo_1.8.2.bb:do_populate_sysroot','/home/=
cluser/ac/z_cpu/poky/meta/recipes-devtools/binutils/binutils-cross_2.29.bb:=
do_populate_sysroot'] NOTE: mem-tst-0.1 do_package_qa: Installed into sysro=
ot: [] NOTE: mem-tst-0.1 do_package_qa: Skipping as already exists in sysro=
ot: ['pseudo-native', 'binutils-cross-x86_64', 'gnu-config-native', 'bison-=
native', 'flex-native', 'texinfo-dummy-native', 'autoconf-native', 'quilt-n=
ative', 'zlib-native', 'gettext-minimal-native', 'automake-native', 'xz-nat=
ive', 'libtool-native', 'm4-native'] NOTE: mem-tst-0.1 do_package_qa: DO PA=
CKAGE QA NOTE: mem-tst-0.1 do_package_qa: Checking Package: mem NOTE: mem-t=
st-0.1 do_package_qa: x86_64-poky-linux-objdump -p/home/cluser/ac/z_cpu/bui=
ld/tmp/work/corei7-64-poky-linux/mem/tst-0.1/packages-split/mem/usr/local/f=
lex_pkgs/diags/mlc ERROR: mem-tst-0.1 do_package_qa: QA Issue: No GNU_HASH =
in the elf binary:'/home/cluser/ac/z_cpu/build/tmp/work/corei7-64-poky-linu=
x/mem/tst-0.1/packages-split/mem/usr/local/flex_pkgs/diags/mlc' [ldflags] N=
OTE: mem-tst-0.1 do_package_qa: Checking Package: mem-staticdev NOTE: mem-t=
st-0.1 do_package_qa: Checking Package: mem-locale NOTE: mem-tst-0.1 do_pac=
kage_qa: Checking Package: mem-doc NOTE: mem-tst-0.1 do_package_qa: Checkin=
g Package: mem-dbg NOTE: mem-tst-0.1 do_package_qa: Checking Package: mem-d=
ev ERROR: mem-tst-0.1 do_package_qa: QA run found fatal errors. Please cons=
ider fixing them. ERROR: mem-tst-0.1 do_package_qa: Function failed: do_pac=
kage_qa ERROR: Logfile of failure stored in:/home/cluser/ac/z_cpu/build/tmp=
/work/corei7-64-poky-linux/mem/tst-0.1/temp/log.do_package_qa.25300 ERROR: =
Task(/home/cluser/ac/z_cpu/poky/../meta-flex/meta-z/recipes-utils/mem/mem_t=
st_0.1.bb:do_package_qa) failed with exit code '1' NOTE: Tasks Summary: Att=
empted 461 tasks of which 460 didn't need to be rerun and 1 failed.=20
  Summary: 1 task failed: =C2=A0/home/cluser/ac/z_cpu/poky/../meta-flex/met=
a-z/recipes-utils/mem/mem_tst_0.1.bb:do_package_qa=20
  =20
  =20
 =20
  =20

------=_Part_1593369_623873553.1563213935986
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="ydp893e88a2yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"><div></div>
        <div dir="ltr" data-setdir="false">Moritz,</div><div dir="ltr" data-setdir="false">Yes, that was it. Thank you very much. Appreciate your help.</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false">best regards</div><div dir="ltr" data-setdir="false">Madhu</div><div><br></div>
        
        </div><div id="ydpc0967d43yahoo_quoted_4121298286" class="ydpc0967d43yahoo_quoted">
            <div style="font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:13px;color:#26282a;">
                
                <div>
                    On Monday, July 15, 2019, 12:12:38 AM PDT, Moritz Porst &lt;moritz.porst@gmx.de&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id="ydpc0967d43yiv9194675671"><div>
    <p>Hello<br clear="none">
    </p>
    <div class="ydpc0967d43yiv9194675671moz-cite-prefix">On 15.07.19 08:42, Madhu Krishnamurthy
      wrote:<br clear="none">
    </div>
    <blockquote type="cite">
      </blockquote></div><div><div class="ydpc0967d43yiv9194675671yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;">
        <div dir="ltr">
          <div>
            <div dir="ltr">Hello,</div>
            <div dir="ltr">I am trying to package an already built binary
              executable called mlc (memory latency checker) to yocto
              and I get this error.&nbsp;</div>
            <div><br clear="none">
            </div>
            <div><font color="#cd232c">ERROR: mem-tst-0.1 do_package: QA Issue:
                File '/usr/local/flex_pkgs/diags/mlc' from mem was
                already stripped, this will prevent future debugging!
                [already-stripped]</font></div>
            <div><font color="#cd232c">ERROR: mem-tst-0.1 do_package: Fatal QA
                errors found, failing task.</font></div>
            <div><font color="#cd232c">ERROR: mem-tst-0.1 do_package: Function
                failed: do_package</font></div>
          </div>
        </div>
      </div>
    
    <font color="#cd232c"><font color="#000000">Your recipe is not
        called mlc but mem-tst-0.1</font></font><br clear="none">
    <blockquote type="cite">
      <div class="ydpc0967d43yiv9194675671yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;">
        <div dir="ltr">
          <div>
            <div><font color="#cd232c">ERROR: Logfile of failure stored in:
/home/cluser/ac/z_cpu/build/tmp/work/corei7-64-poky-linux/mem/tst-0.1/temp/log.do_package.27614</font></div>
            <div><font color="#cd232c">ERROR: Task
(/home/cluser/ac/z_cpu/poky/../meta-flex/meta-z/recipes-utils/mem/mem_tst_0.1.bb:do_package)
                failed with exit</font>&nbsp;code '1'</div>
            <div>NOTE:
              Tasks Summary: Attempted 458 tasks of which 457 didn't
              need to be rerun and 1 failed.</div>
            <div><br clear="none">
            </div>
            <div>I googled
              and found that I need to add this</div>
            <div><br clear="none">
            </div>
            <div><b>INSANE_SKIP_mlc
                = "ldflags"</b></div>
            <div><b>INSANE_SKIP_mlc-dev
                = "ldflags"</b></div>
          </div>
        </div>
      </div>
    </blockquote>
    <p>Thus the two lines above can't work. The preferred way to do this
      is to use ${PN} variable which expands to the package name. Like
      this: &gt;&gt; INSANE_SKIP_${PN} = "ldflags" &lt;&lt;<br clear="none">
    </p>
    <p>Best regards<br clear="none">
      Moritz</p><div class="ydpc0967d43yiv9194675671yqt5945410026" id="ydpc0967d43yiv9194675671yqtfd59728"><br clear="none">
    </div><div class="ydpc0967d43yiv9194675671yqt5945410026" id="ydpc0967d43yiv9194675671yqtfd78430">
    <blockquote type="cite">
      <div class="ydpc0967d43yiv9194675671yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;">
        <div dir="ltr">
          <div>
            <div><b>INHIBIT_PACKAGE_DEBUG_SPLIT
                = "1"</b></div>
            <div><b>INHIBIT_PACKAGE_STRIP
                = "1"</b></div>
            <div><br clear="none">
            </div>
            <div>But after
              adding that I still get this error.&nbsp;</div>
            <div dir="ltr"><b style="color:rgb(205, 35, 44);font-family:Helvetica, Arial, sans-serif;">ERROR: mem-tst-0.1
                do_package_qa: QA Issue: No GNU_HASH in the elf binary:
'/home/cluser/ac/z_cpu/build/tmp/work/corei7-64-poky-linux/mem/tst-0.1/packages-split/mem/usr/local/flex_pkgs/diags/mlc'
                [ldflags]</b></div>
            <div dir="ltr">&nbsp;</div>
            <div dir="ltr">Appreciate any help.</div>
            <div dir="ltr"><br clear="none">
            </div>
            <div>Thanks and
              regards</div>
            <div>Madhu</div>
            <div><br clear="none">
            </div>
            <div dir="ltr">(more log details)</div>
            <div>NOTE:
              Executing RunQueue Tasks</div>
            <div>NOTE:
              mem-tst-0.1 do_package_qa: Direct dependencies are
['virtual:native:/home/cluser/ac/z_cpu/poky/meta/recipes-devtools/pseudo/pseudo_1.8.2.bb:do_populate_sysroot',
'/home/cluser/ac/z_cpu/poky/meta/recipes-devtools/binutils/binutils-cross_2.29.bb:do_populate_sysroot']</div>
            <div>NOTE:
              mem-tst-0.1 do_package_qa: Installed into sysroot: []</div>
            <div>NOTE:
              mem-tst-0.1 do_package_qa: Skipping as already exists in
              sysroot: ['pseudo-native', 'binutils-cross-x86_64',
              'gnu-config-native', 'bison-native', 'flex-native',
              'texinfo-dummy-native', 'autoconf-native', 'quilt-native',
              'zlib-native', 'gettext-minimal-native',
              'automake-native', 'xz-native', 'libtool-native',
              'm4-native']</div>
            <div>NOTE:
              mem-tst-0.1 do_package_qa: DO PACKAGE QA</div>
            <div>NOTE:
              mem-tst-0.1 do_package_qa: Checking Package: mem</div>
            <div>NOTE:
              mem-tst-0.1 do_package_qa: x86_64-poky-linux-objdump -p
/home/cluser/ac/z_cpu/build/tmp/work/corei7-64-poky-linux/mem/tst-0.1/packages-split/mem/usr/local/flex_pkgs/diags/mlc</div>
            <div><font color="#cd232c"><b>ERROR: mem-tst-0.1 do_package_qa: QA
                  Issue: No GNU_HASH in the elf binary:
'/home/cluser/ac/z_cpu/build/tmp/work/corei7-64-poky-linux/mem/tst-0.1/packages-split/mem/usr/local/flex_pkgs/diags/mlc'
                  [ldflags]</b></font></div>
            <div>NOTE:
              mem-tst-0.1 do_package_qa: Checking Package: mem-staticdev</div>
            <div>NOTE:
              mem-tst-0.1 do_package_qa: Checking Package: mem-locale</div>
            <div>NOTE:
              mem-tst-0.1 do_package_qa: Checking Package: mem-doc</div>
            <div>NOTE:
              mem-tst-0.1 do_package_qa: Checking Package: mem-dbg</div>
            <div>NOTE:
              mem-tst-0.1 do_package_qa: Checking Package: mem-dev</div>
            <div><font color="#cd232c"><b>ERROR: mem-tst-0.1 do_package_qa: QA
                  run found fatal errors. Please consider fixing them.</b></font></div>
            <div><font color="#cd232c"><b>ERROR: mem-tst-0.1 do_package_qa:
                  Function failed: do_package_qa</b></font></div>
            <div><font color="#cd232c"><b>ERROR: Logfile of failure stored in:
/home/cluser/ac/z_cpu/build/tmp/work/corei7-64-poky-linux/mem/tst-0.1/temp/log.do_package_qa.25300</b></font></div>
            <div><font color="#cd232c"><b>ERROR: Task
(/home/cluser/ac/z_cpu/poky/../meta-flex/meta-z/recipes-utils/mem/mem_tst_0.1.bb:do_package_qa)
                  failed with exit code '1'</b></font></div>
            <div>NOTE:
              Tasks Summary: Attempted 461 tasks of which 460 didn't
              need to be rerun and 1 failed.</div>
            <div><br clear="none">
            </div>
            <div>Summary: 1
              task failed:</div>
            <div>&nbsp;
/home/cluser/ac/z_cpu/poky/../meta-flex/meta-z/recipes-utils/mem/mem_tst_0.1.bb:do_package_qa</div>
            <div><br clear="none">
            </div>
          </div>
          <br clear="none">
        </div>
      </div>
      <br clear="none">
      <fieldset class="ydpc0967d43yiv9194675671mimeAttachmentHeader"></fieldset>
    </blockquote>
  </div></div></div></div>
            </div>
        </div></body></html>

------=_Part_1593369_623873553.1563213935986--
