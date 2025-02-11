package com.example;

import kr.dogfoot.hwplib.object.HWPFile;
import kr.dogfoot.hwplib.tool.blankfilemaker.BlankFileMaker;
import kr.dogfoot.hwplib.writer.HWPWriter;

import java.io.File;

public class App {
    public static void main(String[] args) throws Exception {
        HWPFile hwpFile = BlankFileMaker.make();
        if (hwpFile != null) {
            String writePath = "sample_hwp" + File.separator + "result-making-blankfile.hwp";
            HWPWriter.toFile(hwpFile, writePath);
        }
    }
}