Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B3A4E0044D
	for <yocto@yoctoproject.org>; Sat, 24 Mar 2012 05:32:19 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1SBQ8o-0000se-37
	for yocto@yoctoproject.org; Sat, 24 Mar 2012 08:32:18 -0400
Date: Sat, 24 Mar 2012 08:32:11 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1203240831360.2367@oneiric>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: [PATCH] Documentation: Remove a number of dead variables from ref manual variable glossary.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 24 Mar 2012 12:32:19 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Delete reference manual glossary entries of obviously dead/renamed
variables:

 * PACKAGE_SUMMARY
 * PACKAGE_DESCRIPTION
 * POKY_EXTRA_INSTALL (renamed to CORE_IMAGE_EXTRA_INSTALL)
 * POKYMODE (renamed to TCMODE)
 * POKYLIBC (renamed to TCLIBC)
 * SHELLCMDS
 * TERMCMD
 * TERMCMDRUN

In addition, fix some "link"s to not refer to any of the above.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  rebuilt ref manual with these changes, i see no problems.

diff --git a/documentation/poky-ref-manual/development.xml b/documentation/poky-ref-manual/development.xml
index bc8ac74..419c3a4 100644
--- a/documentation/poky-ref-manual/development.xml
+++ b/documentation/poky-ref-manual/development.xml
@@ -268,12 +268,7 @@

         <para>
             The default shell used by <filename>devshell</filename> is xterm.
-            You can use other terminal forms by setting the
-            <filename><link linkend='var-TERMCMD'>TERMCMD</link></filename> and
-            <filename><link linkend='var-TERMCMDRUN'>TERMCMDRUN</link></filename> variables
-            in the Yocto Project's <filename>local.conf</filename> file found in the build
-            directory.
-            For examples of the other options available, see the "UI/Interaction Configuration"
+            For examples of available options, see the "UI/Interaction Configuration"
             section of the
             <filename>meta/conf/bitbake.conf</filename> configuration file in the Yocto Project
             files.
diff --git a/documentation/poky-ref-manual/ref-variables.xml b/documentation/poky-ref-manual/ref-variables.xml
index f345a9e..cea5aed 100644
--- a/documentation/poky-ref-manual/ref-variables.xml
+++ b/documentation/poky-ref-manual/ref-variables.xml
@@ -1341,14 +1341,6 @@ FILESPATH = "${@base_set_filespath([ "${FILE_DIRNAME}/${PF}", \
             </glossdef>
         </glossentry>

-        <glossentry id='var-PACKAGE_DESCRIPTION'><glossterm>PACKAGE_DESCRIPTION</glossterm>
-            <glossdef>
-                <para>The long form description of the binary package for packaging systems such as
-                    <filename>ipkg</filename>, <filename>rpm</filename> or <filename>debian</filename>.
-                    By default, this variable inherits <filename>DESCRIPTION</filename>.</para>
-            </glossdef>
-        </glossentry>
-
         <glossentry id='var-PACKAGE_EXTRA_ARCHS'><glossterm>PACKAGE_EXTRA_ARCHS</glossterm>
             <glossdef>
                 <para>Specifies the list of architectures compatible with the device CPU.
@@ -1357,16 +1349,6 @@ FILESPATH = "${@base_set_filespath([ "${FILE_DIRNAME}/${PF}", \
             </glossdef>
         </glossentry>

-        <glossentry id='var-PACKAGE_SUMMARY'><glossterm>PACKAGE_SUMMARY</glossterm>
-            <glossdef>
-                <para>The short (72 character limit suggested) summary of the binary
-                package for packaging systems such as <filename>ipkg</filename>,
-                <filename>rpm</filename> or <filename>debian</filename>.
-                By default, this variable inherits <filename>DESCRIPTION</filename>.</para>
-            </glossdef>
-        </glossentry>
-
-
         <glossentry id='var-PACKAGES'><glossterm>PACKAGES</glossterm>
             <glossdef>
                 <para>The list of packages to be created from the recipe.
@@ -1463,32 +1445,6 @@ FILESPATH = "${@base_set_filespath([ "${FILE_DIRNAME}/${PF}", \
             </glossdef>
         </glossentry>

-        <glossentry id='var-POKY_EXTRA_INSTALL'><glossterm>POKY_EXTRA_INSTALL</glossterm>
-            <glossdef>
-                <para>Specifies the list of packages to be added to the image.
-                    This variable should only be set in the <filename>local.conf</filename>
-                    configuration file found in the Yocto Project's build directory.</para>
-            </glossdef>
-        </glossentry>
-
-        <glossentry id='var-POKYLIBC'><glossterm>POKYLIBC</glossterm>
-            <glossdef>
-                <para>
-                    This variable is no longer supported and has been replaced by the
-                    <link linkend='var-TCLIBC'><filename>TCLIBC</filename></link> variable.
-                </para>
-            </glossdef>
-        </glossentry>
-
-        <glossentry id='var-POKYMODE'><glossterm>POKYMODE</glossterm>
-            <glossdef>
-                <para>
-                    This variable is no longer supported and has been replaced by the
-                    <link linkend='var-TCMODE'><filename>TCMODE</filename></link> variable.
-                </para>
-            </glossdef>
-        </glossentry>
-
     </glossdiv>

 <!--            <glossdiv id='var-glossary-q'><title>Q</title>-->
@@ -1661,14 +1617,6 @@ FILESPATH = "${@base_set_filespath([ "${FILE_DIRNAME}/${PF}", \
             </glossdef>

         </glossentry>
-        <glossentry id='var-SHELLCMDS'><glossterm>SHELLCMDS</glossterm>
-            <glossdef>
-                <para>
-                    A list of commands to run within the shell.
-                    The list is used by <filename><link linkend='var-TERMCMDRUN'>TERMCMDRUN</link></filename>.
-                </para>
-            </glossdef>
-        </glossentry>

         <glossentry id='var-SITEINFO_ENDIANNESS'><glossterm>SITEINFO_ENDIANNESS</glossterm>
             <glossdef>
@@ -1842,40 +1790,6 @@ FILESPATH = "${@base_set_filespath([ "${FILE_DIRNAME}/${PF}", \
             </glossdef>
         </glossentry>

-        <glossentry id='var-TERMCMD'><glossterm>TERMCMD</glossterm>
-            <glossdef>
-                <para>
-                    This command is used by BitBake to launch a terminal window with a
-                    shell.
-                    The shell is unspecified so the user's default shell is used.
-                    By default, the variable is set to "xterm" but it can
-                    be any X11 terminal application or a terminal multiplexer such as screen.
-                </para>
-                <note>
-                    While <filename>KONSOLE_TERMCMD</filename> and
-                    <filename>KONSOLE_TERMCMDRUN</filename> are provided
-                    and will work with KDE's Konsole terminal application Konsole from KDE 3,
-                    Konsole in KDE 4.0 and later versions will no longer work here due to the fact
-                    that it now launches in the background by default, and it is not practically
-                    possible to wait until it has terminated.
-                    It is hoped that this can be fixed
-                    in a future version.
-                </note>
-            </glossdef>
-        </glossentry>
-
-        <glossentry id='var-TERMCMDRUN'><glossterm>TERMCMDRUN</glossterm>
-            <glossdef>
-                <para>
-                    This variable is similar to
-                    <filename><link linkend='var-TERMCMD'>TERMCMD</link></filename>.
-                    However, instead of running the user's shell, the command specified by
-                    the <filename><link linkend='var-SHELLCMDS'>SHELLCMDS</link></filename>
-                    variable is run.
-                </para>
-            </glossdef>
-        </glossentry>
-
         <glossentry id='var-TMPDIR'><glossterm>TMPDIR</glossterm>
             <glossdef>
                 <para>
diff --git a/documentation/poky-ref-manual/ref-varlocality.xml b/documentation/poky-ref-manual/ref-varlocality.xml
index 60cb998..f3d2571 100644
--- a/documentation/poky-ref-manual/ref-varlocality.xml
+++ b/documentation/poky-ref-manual/ref-varlocality.xml
@@ -40,11 +40,9 @@
                        </para></listitem>
                    <listitem><para><filename><link linkend='var-TARGET_FPU'>TARGET_FPU</link></filename>
                        </para></listitem>
-                   <listitem><para><filename><link linkend='var-POKYMODE'>POKYMODE</link></filename>
-                       </para></listitem>
                    <listitem><para><filename><link linkend='var-TCMODE'>TCMODE</link></filename>
                        </para></listitem>
-                   <listitem><para><filename><link linkend='var-POKYLIBC'>POKYLIBC</link></filename>
+                   <listitem><para><filename><link linkend='var-TCLIBC'>TCLIBC</link></filename>
                        </para></listitem>
                 </itemizedlist>
             </para>


-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

