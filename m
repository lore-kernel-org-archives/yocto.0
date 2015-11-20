Return-Path: <Virgi200@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E99A3E00B4D; Fri, 20 Nov 2015 01:18:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE, MIME_HTML_ONLY,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (virgi200[at]gmx.de)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.17.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.7 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97720E00B2E
	for <yocto@yoctoproject.org>; Fri, 20 Nov 2015 01:18:13 -0800 (PST)
Received: from [217.5.143.100] by 3capp-gmx-bs22.server.lan (via HTTP); Fri,
	20 Nov 2015 10:18:12 +0100
MIME-Version: 1.0
Message-ID: <trinity-5850b69b-4110-4867-935f-e8cac75f65d9-1448011092474@3capp-gmx-bs22>
From: "Virgilia  Eigner" <Virgi200@gmx.de>
To: yocto@yoctoproject.org
Date: Fri, 20 Nov 2015 10:18:12 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <CAMKF1soWAUpRz90qetDpsLC5Zb9yRrc+ikUaxdzpQuXX0O6G-w@mail.gmail.com>
References: <trinity-5dab3937-8bd4-42ae-98e1-bdbeb72bb2d4-1447838770675@3capp-gmx-bs65>,
	<CAMKF1soWAUpRz90qetDpsLC5Zb9yRrc+ikUaxdzpQuXX0O6G-w@mail.gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K0:LDNduHwPp37r5iQOAzNQLcJhaK+0vR6xHXc/pFZgvMp
	JO8Pj1y3sjHBFZzX8Mjd4Src1VRLhQ3Cq1OpOdDfs+4y17jMcz
	KCI4/9NvISmNdor6F+5PQKABbw6YWZosi7hPG3yvzjEbnT4N+B
	nhThl1M8gwQcj/q1HchGdYox5f93UMXy9UoGEj0ZbFLitVtHeC
	H5FiXnuG5GoEHyt38roGqxnbbRLGXg2zR12pmqOswKlqbF1air
	VsIZYNb2f0VBtvNPvM3nHhGZRIit/rI0auD3CnpA39NBWgI7bY Zqzlwc=
X-UI-Out-Filterresults: notjunk:1;V01:K0:QJWsfOqD4SI=:ZN1u5x6dMZ0jzXDO9SooVW
	nEL+3C6jmiEFEJ4x+CNPVZ/9YHezdrd38eU+NV1oSmzBaI5+TG+8LYPk5bljBeB1Xp1pMwzp7
	pUMIPK2hjYw6A6N932OJz83L74yFZR5DRz4Aq26MGdCij8VqjEIrXyg8DjWGR80BMzmFL5Ixd
	tjEsC06JNI/cabzn5l4zqk8jN6JXqtLbnZRmDww6osMK/LUktxtcOArxNOI6NZ10JnKdu9SrN
	+X58q+OVAJw3V7mJEwmQJVjEDv2aNi4eJ+H/enViG0UK1jSddGdu/BrlHYDZ4PsNMNBHMGGx7
	Yj+gI7PJNv9XuUT9uy7ocNY6hT1qPsSDcNwopxQ0vc+HVRJtZQUndnGrrrYp6JZTe5rruskke
	qxMI1AE9+zxVlihcbDLLhxQzyXFgPVt3b6+ROVZofMbT0U2oKmS7hbom1WZ+zWu7jqniqsnOR
	jAzOU/UhAA==
Subject: external toolchain
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
X-List-Received-Date: Fri, 20 Nov 2015 09:18:18 -0000
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div style="font-family: Verdana;font-size: 12.0px;"><div>
<div>
<div>Hi,</div>

<div>thanks a lot it solves my last fail, i configured gcc-external.inc( at the meta-sourcery)<br/>
with PROVIDES +=gcc-source. Then it appeared the following fail:</div>

<div>ERROR: Task do_configure in /home/s/Yocto/poky/meta-sourcery-master/recipes-external/gcc/gcc-runtime-external.bb depends upon<br/>
non-existent task do_preconfigure in /home/s/Yocto/poky/meta-sourcery-master/recipes-external/gcc/gcc-external-cross.bb.<br/>
Then i wrote &quot;require recipes-devtools/gcc/gcc-source.inc&quot; at the top of gcc-external-cross.bb and it starts to build, but with this error.</div>

<div><br/>
s@vmint ~/Yocto/poky/build &#36; bitbake core-image-minimal<br/>
WARNING: Host distribution &quot;LinuxMint-1&quot; has not been validated with this version of the build system; you may possibly experience unexpected<br/>
failures. It is recommended that you use a tested distribution.<br/>
Loading cache: 100% &#124;#########################################################################################################################<br/>
#############################&#124; ETA:&nbsp; 00:00:00<br/>
Loaded 1298 entries from dependency cache.<br/>
Parsing recipes: 100% &#124;########################################################################################################################<br/>
############################&#124; Time: 00:00:00<br/>
Parsing of 896 .bb files complete (895 cached, 1 parsed). 1297 targets, 81 skipped, 0 masked, 0 errors.<br/>
NOTE: Resolving any missing task queue dependencies</div>

<div>Build Configuration:<br/>
BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = &quot;1.26.0&quot;<br/>
BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = &quot;i686-linux&quot;<br/>
NATIVELSBSTRING&nbsp;&nbsp; = &quot;LinuxMint-1&quot;<br/>
TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = &quot;powerpc-e500v2-linux-gnuspe&quot;<br/>
MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = &quot;powerpc&quot;<br/>
DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = &quot;poky&quot;<br/>
DISTRO_VERSION&nbsp;&nbsp;&nbsp; = &quot;1.8.1&quot;<br/>
TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp; = &quot;m32 spe ppce500v2&quot;<br/>
TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = &quot;ppc-efd&quot;<br/>
EXTERNAL_TOOLCHAIN = &quot;/home/s/x-tools/powerpc-e500v2-linux-gnuspe&quot;<br/>
SOURCERY_VERSION&nbsp; = &quot;s-1.0&quot;<br/>
GCC_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = &quot;4.7.2&quot;<br/>
meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br/>
meta-yocto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br/>
meta-yocto-bsp&nbsp;&nbsp; &nbsp;<br/>
meta-powerpc&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br/>
meta-sourcery-master = &quot;&lt;unknown&gt;:&lt;unknown&gt;&quot;</div>

<div>NOTE: Preparing RunQueue<br/>
NOTE: Executing SetScene Tasks<br/>
NOTE: Executing RunQueue Tasks<br/>
ERROR: Error executing a python function in /home/s/Yocto/poky/meta-sourcery-master/recipes-external/gcc/gcc-external-cross.bb:</div>

<div>The stack trace of python calls that resulted in this exception/failure was:<br/>
File: &#39;do_preconfigure&#39;, lineno: 12, function: &lt;module&gt;<br/>
&nbsp;&nbsp;&nbsp;&nbsp; 0008:&nbsp;&nbsp;&nbsp; cmd = d.expand(&quot;sed -i &#39;s/BUILD_INFO=info/BUILD_INFO=/&#39; /home/s/Yocto/poky/build/tmp/work-shared/gcc-4.7.2-s-1.0-r0/gcc/configure&quot;)<br/>
&nbsp;&nbsp;&nbsp;&nbsp; 0009:&nbsp;&nbsp;&nbsp; subprocess.check_output(cmd, stderr=subprocess.STDOUT, shell=True)<br/>
&nbsp;&nbsp;&nbsp;&nbsp; 0010:<br/>
&nbsp;&nbsp;&nbsp;&nbsp; 0011:<br/>
&nbsp;*** 0012:do_preconfigure(d)<br/>
&nbsp;&nbsp;&nbsp;&nbsp; 0013:<br/>
File: &#39;do_preconfigure&#39;, lineno: 5, function: do_preconfigure<br/>
&nbsp;&nbsp;&nbsp;&nbsp; 0001:<br/>
&nbsp;&nbsp;&nbsp;&nbsp; 0002:def do_preconfigure(d):<br/>
&nbsp;&nbsp;&nbsp;&nbsp; 0003:&nbsp;&nbsp;&nbsp; import subprocess<br/>
&nbsp;&nbsp;&nbsp;&nbsp; 0004:&nbsp;&nbsp;&nbsp; cmd = d.expand(&#39;PATH=/home/s/Yocto/poky/scripts:/home/s/Yocto/poky/build/tmp/sysroots/i686-linux/usr/bin/powerpc-e500v2-linux-gnuspe:<br/>
/home/s/Yocto/poky/build/tmp/sysroots/i686-linux/home/s/Yocto/poky/build/tmp/sysroots/i686-linux/usr/bin/powerpc-e500v2-linux-gnuspe/crossscripts:/<br/>
home/s/Yocto/poky/build/tmp/sysroots/i686-linux/usr/sbin:<br/>
/home/s/Yocto/poky/build/tmp/sysroots/i686-linux/usr/bin:/home/s/Yocto/poky/build/tmp/sysroots/i686-linux/sbin:/home/s/Yocto/poky/<br/>
build/tmp/sysroots/i686-linux/bin:/home/s/Yocto/poky/scripts:/home/s/Yocto/poky/bitbake/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:<br/>
/usr/games cd /home/s/Yocto/poky/build/tmp/work-shared/gcc-4.7.2-s-1.0-r0 &amp;&amp; gnu-configize&#39;)<br/>
&nbsp;*** 0005:&nbsp;&nbsp;&nbsp; subprocess.check_output(cmd, stderr=subprocess.STDOUT, shell=True)<br/>
&nbsp;&nbsp;&nbsp;&nbsp; 0006:&nbsp;&nbsp;&nbsp; # See 0044-gengtypes.patch, we need to regenerate this file<br/>
&nbsp;&nbsp;&nbsp;&nbsp; 0007:&nbsp;&nbsp;&nbsp; bb.utils.remove(d.expand(&quot;/home/s/Yocto/poky/build/tmp/work-shared/gcc-4.7.2-s-1.0-r0/gcc/gengtype-lex.c&quot;))<br/>
&nbsp;&nbsp;&nbsp;&nbsp; 0008:&nbsp;&nbsp;&nbsp; cmd = d.expand(&quot;sed -i &#39;s/BUILD_INFO=info/BUILD_INFO=/&#39; /home/s/Yocto/poky/build/tmp/work-shared/gcc-4.7.2-s-1.0-r0/gcc/configure&quot;)<br/>
&nbsp;&nbsp;&nbsp;&nbsp; 0009:&nbsp;&nbsp;&nbsp; subprocess.check_output(cmd, stderr=subprocess.STDOUT, shell=True)<br/>
File: &#39;/usr/lib/python2.7/subprocess.py&#39;, lineno: 575, function: check_output<br/>
&nbsp;&nbsp;&nbsp;&nbsp; 0571:&nbsp;&nbsp;&nbsp; if retcode:<br/>
&nbsp;&nbsp;&nbsp;&nbsp; 0572:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cmd = kwargs.get(&quot;args&quot;)<br/>
&nbsp;&nbsp;&nbsp;&nbsp; 0573:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if cmd is None:<br/>
&nbsp;&nbsp;&nbsp;&nbsp; 0574:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cmd = popenargs[0]<br/>
&nbsp;*** 0575:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; raise CalledProcessError(retcode, cmd, output=output)<br/>
&nbsp;&nbsp;&nbsp;&nbsp; 0576:&nbsp;&nbsp;&nbsp; return output<br/>
&nbsp;&nbsp;&nbsp;&nbsp; 0577:<br/>
&nbsp;&nbsp;&nbsp;&nbsp; 0578:<br/>
&nbsp;&nbsp;&nbsp;&nbsp; 0579:def list2cmdline(seq):<br/>
Exception: CalledProcessError: Command &#39;PATH=/home/s/Yocto/poky/scripts:/home/s/Yocto/poky/build/tmp/sysroots/i686-linux/usr/bin<br/>
/powerpc-e500v2-linux-gnuspe:/home/s/Yocto/poky/build/tmp/sysroots/i686-linux/home/s/Yocto/poky/build/tmp/sysroots/i686-linux<br/>
/usr/bin/powerpc-e500v2-linux-gnuspe/crossscripts:/home/s/Yocto/poky/build/tmp/sysroots/i686-linux/usr/sbin:/home/s/Yocto/poky<br/>
/build/tmp/sysroots/i686-linux/usr/bin:/home/s/Yocto/poky/build/tmp/sysroots/i686-linux/sbin:/home/s/Yocto/poky/build/tmp/sysroots<br/>
/i686-linux/bin:/home/s/Yocto/poky/scripts:/home/s/Yocto/poky/bitbake/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games<br/>
cd /home/s/Yocto/poky/build/tmp/work-shared/gcc-4.7.2-s-1.0-r0 &amp;&amp; gnu-configize&#39; returned non-zero exit status 1</div>

<div>ERROR: Function failed: do_preconfigure<br/>
ERROR: Logfile of failure stored in: /home/s/Yocto/poky/build/tmp/work-shared/gcc-4.7.2-s-1.0-r0/temp/log.do_preconfigure.4083<br/>
ERROR: Task 403 (/home/s/Yocto/poky/meta-sourcery-master/recipes-external/gcc/gcc-external-cross.bb, do_preconfigure) failed with exit code &#39;1&#39;<br/>
NOTE: Tasks Summary: Attempted 139 tasks of which 2 didn&#39;t need to be rerun and 1 failed.<br/>
Waiting for 0 running tasks to finish:</div>

<div>Summary: 1 task failed:<br/>
&nbsp; /home/s/Yocto/poky/meta-sourcery-master/recipes-external/gcc/gcc-external-cross.bb, do_preconfigure<br/>
Summary: There was 1 WARNING message shown.<br/>
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.</div>

<div>&nbsp;</div>

<div>I am very thankful for any help!</div>

<div>&nbsp;</div>
</div>

<div>&nbsp;</div>

<div>&nbsp;</div>

<div>&nbsp;&nbsp; On Wed, Nov 18, 2015 at 1:26 AM, Virgilia Eigner &lt;Virgi..@gmx.de&gt; wrote:
<div name="quote" style="margin:10px 5px 5px 10px; padding: 10px 0 10px 10px; border-left:2px solid #C3D9E5; word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space;">
<div name="quoted-content">&gt; In this case I can&#39;t find any help, has anyone an idea?<br/>
<br/>
add a provider for gcc-source in your external toolchain recipe.</div>

<div name="quoted-content">&nbsp;</div>
</div>
</div>
</div></div></body></html>

